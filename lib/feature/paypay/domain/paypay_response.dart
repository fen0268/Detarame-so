// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paypay_response.freezed.dart';
part 'paypay_response.g.dart';

@freezed
class PayPayResponse with _$PayPayResponse {
  const factory PayPayResponse({
    required PayPayResultInfo resultInfo,
    required PayPayData data,
  }) = _PayPayResponse;

  factory PayPayResponse.fromJson(Map<String, dynamic> json) =>
      _$PayPayResponseFromJson(json);
}

@freezed
class PayPayResultInfo with _$PayPayResultInfo {
  const factory PayPayResultInfo({
    required String code,
    required String message,
    required String codeId,
  }) = _PayPayResultInfo;

  factory PayPayResultInfo.fromJson(Map<String, dynamic> json) =>
      _$PayPayResultInfoFromJson(json);
}

@freezed
class PayPayData with _$PayPayData {
  const factory PayPayData({
    required String url,
    required String codeId,
    required int expiryDate,
    required String merchantPaymentId,
    required PayPayAmount amount,
    required List<PayPayOrderItems> orderItems,
    required String codeType,
    required int requestedAt,
    required String redirectUrl,
    required String redirectType,
    required bool isAuthorization,
    required String deeplink,
  }) = _PayPayData;

  factory PayPayData.fromJson(Map<String, dynamic> json) =>
      _$PayPayDataFromJson(json);
}

@freezed
class PayPayOrderItems with _$PayPayOrderItems {
  factory PayPayOrderItems({
    required String name,
    required int quantity,
    @JsonKey(name: 'unit_price') required PayPayAmount unitPrice,
  }) = _PayPayOrderItems;

  factory PayPayOrderItems.fromJson(Map<String, dynamic> json) =>
      _$PayPayOrderItemsFromJson(json);
}

@freezed
class PayPayAmount with _$PayPayAmount {
  const factory PayPayAmount({
    required int amount,
    required String currency,
  }) = _PayPayAmount;

  factory PayPayAmount.fromJson(Map<String, dynamic> json) =>
      _$PayPayAmountFromJson(json);
}


/* {"resultInfo":{"code":"SUCCESS","message":"Success","codeId":"08100001"},
"data":
{"codeId":"04-zNWk499e7c2BPHQU","url":"https://qr-stg.sandbox.paypay.ne.jp/28180104zNWk499e7c2BPHQU","expiryDate":1706986486,"merchantPaymentId":"TESTMERCH_PAY_002ef3eed4d2","amount":{"amount":1,"currency":"JPY"},"orderItems":[{"name":"hogehoge","quantity":1,"unit_price":{"amount":30,"currency":"JPY"}}],"codeType":"ORDER_QR","requestedAt":1706986183,"redirectUrl":"https://example.com","redirectType":"WEB_LINK","isAuthorization":false,"deeplink":"paypay://payment?link_key=https%3A%2F%2Fqr-stg.sandbox.paypay.ne.jp%2F28180104zNWk499e7c2BPHQU"}}*/
