import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:paypay_uo/paypay_uo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/random_num_generate.dart';
import '../../merchandise/domain/merchandise.dart';
import 'merchant_payment_id.dart';

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
    // 72708379839329

    ref
        .read(merchantPaymentIdNotifierProvider.notifier)
        .setMerchantPaymentId(merchantPaymentId);

    final data = await state.codeApi.createQRCode(payload);
    return ApiResult.fromJson(jsonDecode(data.body) as Map<String, dynamic>);

    // final response =
    //     await state.codeApi.getPaymentDetails(payload.merchantPaymentId);

    // final response =
    //     await state.codeApi.getPaymentDetails('TESTMERCH_PAY_812b2dee8e37');
    // logger.v('response: $response');

    // final apiResult = PayPayClient.convertResponseToApiResult(response);
    // logger.i('apiResult: $apiResult');
  }
}
