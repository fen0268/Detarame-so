// ignore_for_file: avoid_setters_without_getters

import 'dart:convert';

import 'package:paypay_uo/paypay_uo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/random_num_generate.dart';
import '../../merchandise/domain/merchandise.dart';

part 'paypay_service.g.dart';

@Riverpod(keepAlive: true)
class PayPayService extends _$PayPayService {
  @override
  PayPayClient build() {
    return initPayPayClient();
  }

  PayPayClient initPayPayClient() {
    // APIキー / Key ID
    const apiKey = 'a_QhqinDJCfZ_yG2H';

    // シークレット / Key Secret
    const apiSecret = 'fC1N+0AOKya6dHtu+roKWOO0pC3AKmunNzC6qhRQYBg=';

    // 加盟店ID / Merchant ID
    const assumeMerchant = '743220803855630336';

    final paypayAuth = PayPayAuth(
      apiKey: apiKey,
      apiSecret: apiSecret,
      merchantId: assumeMerchant,
    );

    return PayPayClient(auth: paypayAuth, apiMode: ApiMode.staging);
  }

  Future<ApiResult> purchasePhase(ReadMerchandise merchandise) async {
    final merchantPaymentId = randomIntWithRange() + randomIntWithRange();
    final payload = CreateQrCodePayload(
      merchantPaymentId: merchantPaymentId,
      amount: Amount(currency: 'JPY', amount: merchandise.price),
      orderDescription: merchandise.description,
      requestedAt: PayPayClient.getRequestdAt(),
      redirectType: 'WEB_LINK',
      redirectUrl: 'https://detarame.page.link/success',
    );

    // リダイレクトした際に取引結果に merchantPaymentId の値が存在するのかを確認するため
    ref.read(merchantPaymentIdNotifierProvider.notifier).setMerchantPaymentId =
        merchantPaymentId;

    final data = await state.codeApi.createQRCode(payload);
    return ApiResult.fromJson(jsonDecode(data.body) as Map<String, dynamic>);
  }
}

@Riverpod(keepAlive: true)
class MerchantPaymentIdNotifier extends _$MerchantPaymentIdNotifier {
  @override
  String build() {
    return '';
  }

  set setMerchantPaymentId(String id) {
    state = id;
  }
}
