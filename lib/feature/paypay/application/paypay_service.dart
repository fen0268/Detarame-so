import 'dart:convert';

import 'package:paypay_uo/paypay_uo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../merchandise/domain/merchandise.dart';
import '../domain/paypay_response.dart';

part 'paypay_service.g.dart';

@riverpod
class PayPayService extends _$PayPayService {
  @override
  PayPayClient build() {
    return initPayPay();
  }

  PayPayClient initPayPay() {
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

  Future<PayPayResponse> purchasePhase(ReadMerchandise merchandise) async {
    final payload = CreateQrCodePayload(
      merchantPaymentId: PayPayClient.getTestMerchantPaymentId(),
      amount: Amount(currency: 'JPY', amount: merchandise.price),
      orderItems: [
        OrderItem(
          name: merchandise.name,
          quantity: 1,
          unitPrice: Amount(
            currency: 'JPY',
            amount: merchandise.price,
          ),
        ),
      ],
      requestedAt: PayPayClient.getRequestdAt(),
      redirectType: 'WEB_LINK',
      redirectUrl: 'https://detarame.page.link/success',
    );

    // Exception has occurred.
    // _ClientSocketException
    //(Failed host lookup: 'stg-api.sandbox.paypay.ne.jp')
    final data = await state.codeApi.createQRCode(payload);

    return PayPayResponse.fromJson(
      jsonDecode(data.body) as Map<String, dynamic>,
    );
  }
}
