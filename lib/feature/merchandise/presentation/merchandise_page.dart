import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/logger.dart';
import '../../editor/editor_page.dart';
import '../../paypay/application/merchant_payment_id.dart';
import '../../paypay/application/paypay_service.dart';
import '../application/merchandise_service.dart';
import 'widget/merchandise_item.dart';
import 'widget/sold_out_widget.dart';

class MerchandisePage extends ConsumerStatefulWidget {
  const MerchandisePage({super.key});

  static String path = '/';

  @override
  MerchandisePageState createState() => MerchandisePageState();
}

class MerchandisePageState extends ConsumerState {
  @override
  void initState() {
    super.initState();
    initDynamicLinks(context);
  }

  final dynamicLinks = FirebaseDynamicLinks.instance;

  // DynamicLinks の初期化
  // リダイレクト時にリンクを取得する
  Future<void> initDynamicLinks(BuildContext context) async {
    dynamicLinks.onLink.listen((_) async {
      final paypayClient = ref.watch(payPayServiceProvider);
      final merchantPaymentId = ref.watch(merchantPaymentIdNotifierProvider);
      final response =
        await  paypayClient.codeApi.getPaymentDetails(merchantPaymentId!);
      final apiResult = PayPayClient.convertResponseToApiResult(response);
      logger.i('apiResult: $apiResult');
    }).onError((error) {});
  }

  Future<void> openPayPaySite(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    final stream = ref.watch(streamFetchMerchandiseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample PayPay'),
        actions: [
          IconButton(
            onPressed: () {
              context.go(EditorPage.path);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: stream.when(
        data: (data) => Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () async {
                      final response = await ref
                          .read(payPayServiceProvider.notifier)
                          .purchasePhase(data[index]);
                      if (response.resultInfo.code == 'SUCCESS') {
                        await openPayPaySite(response.data!['url'] as String);
                      }
                    },
                    child: data[index].isStock
                        ? MerchandiseItem(merchandise: data[index])
                        : SoldOutWidget(merchandise: data[index]),
                  );
                },
              ),
            ),
          ],
        ),
        loading: () {
          return null;
        },
        error: (error, stackTrace) {
          return null;
        },
      ),
    );
  }
}
