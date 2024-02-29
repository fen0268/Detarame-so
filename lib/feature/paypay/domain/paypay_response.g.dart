// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paypay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayPayResponseImpl _$$PayPayResponseImplFromJson(Map<String, dynamic> json) =>
    _$PayPayResponseImpl(
      resultInfo:
          PayPayResultInfo.fromJson(json['resultInfo'] as Map<String, dynamic>),
      data: PayPayData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayPayResponseImplToJson(
        _$PayPayResponseImpl instance) =>
    <String, dynamic>{
      'resultInfo': instance.resultInfo,
      'data': instance.data,
    };

_$PayPayResultInfoImpl _$$PayPayResultInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PayPayResultInfoImpl(
      code: json['code'] as String,
      message: json['message'] as String,
      codeId: json['codeId'] as String,
    );

Map<String, dynamic> _$$PayPayResultInfoImplToJson(
        _$PayPayResultInfoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'codeId': instance.codeId,
    };

_$PayPayDataImpl _$$PayPayDataImplFromJson(Map<String, dynamic> json) =>
    _$PayPayDataImpl(
      url: json['url'] as String,
      codeId: json['codeId'] as String,
      expiryDate: json['expiryDate'] as int,
      merchantPaymentId: json['merchantPaymentId'] as String,
      amount: PayPayAmount.fromJson(json['amount'] as Map<String, dynamic>),
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => PayPayOrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeType: json['codeType'] as String,
      requestedAt: json['requestedAt'] as int,
      redirectUrl: json['redirectUrl'] as String,
      redirectType: json['redirectType'] as String,
      isAuthorization: json['isAuthorization'] as bool,
      deeplink: json['deeplink'] as String,
    );

Map<String, dynamic> _$$PayPayDataImplToJson(_$PayPayDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'codeId': instance.codeId,
      'expiryDate': instance.expiryDate,
      'merchantPaymentId': instance.merchantPaymentId,
      'amount': instance.amount,
      'orderItems': instance.orderItems,
      'codeType': instance.codeType,
      'requestedAt': instance.requestedAt,
      'redirectUrl': instance.redirectUrl,
      'redirectType': instance.redirectType,
      'isAuthorization': instance.isAuthorization,
      'deeplink': instance.deeplink,
    };

_$PayPayOrderItemsImpl _$$PayPayOrderItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$PayPayOrderItemsImpl(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      unitPrice:
          PayPayAmount.fromJson(json['unit_price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayPayOrderItemsImplToJson(
        _$PayPayOrderItemsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
    };

_$PayPayAmountImpl _$$PayPayAmountImplFromJson(Map<String, dynamic> json) =>
    _$PayPayAmountImpl(
      amount: json['amount'] as int,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$PayPayAmountImplToJson(_$PayPayAmountImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
