// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paypay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayPayResponse _$PayPayResponseFromJson(Map<String, dynamic> json) {
  return _PayPayResponse.fromJson(json);
}

/// @nodoc
mixin _$PayPayResponse {
  PayPayResultInfo get resultInfo => throw _privateConstructorUsedError;
  PayPayData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayPayResponseCopyWith<PayPayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayResponseCopyWith<$Res> {
  factory $PayPayResponseCopyWith(
          PayPayResponse value, $Res Function(PayPayResponse) then) =
      _$PayPayResponseCopyWithImpl<$Res, PayPayResponse>;
  @useResult
  $Res call({PayPayResultInfo resultInfo, PayPayData data});

  $PayPayResultInfoCopyWith<$Res> get resultInfo;
  $PayPayDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PayPayResponseCopyWithImpl<$Res, $Val extends PayPayResponse>
    implements $PayPayResponseCopyWith<$Res> {
  _$PayPayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultInfo = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      resultInfo: null == resultInfo
          ? _value.resultInfo
          : resultInfo // ignore: cast_nullable_to_non_nullable
              as PayPayResultInfo,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PayPayData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayPayResultInfoCopyWith<$Res> get resultInfo {
    return $PayPayResultInfoCopyWith<$Res>(_value.resultInfo, (value) {
      return _then(_value.copyWith(resultInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PayPayDataCopyWith<$Res> get data {
    return $PayPayDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayPayResponseImplCopyWith<$Res>
    implements $PayPayResponseCopyWith<$Res> {
  factory _$$PayPayResponseImplCopyWith(_$PayPayResponseImpl value,
          $Res Function(_$PayPayResponseImpl) then) =
      __$$PayPayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PayPayResultInfo resultInfo, PayPayData data});

  @override
  $PayPayResultInfoCopyWith<$Res> get resultInfo;
  @override
  $PayPayDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PayPayResponseImplCopyWithImpl<$Res>
    extends _$PayPayResponseCopyWithImpl<$Res, _$PayPayResponseImpl>
    implements _$$PayPayResponseImplCopyWith<$Res> {
  __$$PayPayResponseImplCopyWithImpl(
      _$PayPayResponseImpl _value, $Res Function(_$PayPayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultInfo = null,
    Object? data = null,
  }) {
    return _then(_$PayPayResponseImpl(
      resultInfo: null == resultInfo
          ? _value.resultInfo
          : resultInfo // ignore: cast_nullable_to_non_nullable
              as PayPayResultInfo,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PayPayData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayPayResponseImpl implements _PayPayResponse {
  const _$PayPayResponseImpl({required this.resultInfo, required this.data});

  factory _$PayPayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayPayResponseImplFromJson(json);

  @override
  final PayPayResultInfo resultInfo;
  @override
  final PayPayData data;

  @override
  String toString() {
    return 'PayPayResponse(resultInfo: $resultInfo, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPayResponseImpl &&
            (identical(other.resultInfo, resultInfo) ||
                other.resultInfo == resultInfo) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resultInfo, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPayResponseImplCopyWith<_$PayPayResponseImpl> get copyWith =>
      __$$PayPayResponseImplCopyWithImpl<_$PayPayResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayPayResponseImplToJson(
      this,
    );
  }
}

abstract class _PayPayResponse implements PayPayResponse {
  const factory _PayPayResponse(
      {required final PayPayResultInfo resultInfo,
      required final PayPayData data}) = _$PayPayResponseImpl;

  factory _PayPayResponse.fromJson(Map<String, dynamic> json) =
      _$PayPayResponseImpl.fromJson;

  @override
  PayPayResultInfo get resultInfo;
  @override
  PayPayData get data;
  @override
  @JsonKey(ignore: true)
  _$$PayPayResponseImplCopyWith<_$PayPayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayPayResultInfo _$PayPayResultInfoFromJson(Map<String, dynamic> json) {
  return _PayPayResultInfo.fromJson(json);
}

/// @nodoc
mixin _$PayPayResultInfo {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get codeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayPayResultInfoCopyWith<PayPayResultInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayResultInfoCopyWith<$Res> {
  factory $PayPayResultInfoCopyWith(
          PayPayResultInfo value, $Res Function(PayPayResultInfo) then) =
      _$PayPayResultInfoCopyWithImpl<$Res, PayPayResultInfo>;
  @useResult
  $Res call({String code, String message, String codeId});
}

/// @nodoc
class _$PayPayResultInfoCopyWithImpl<$Res, $Val extends PayPayResultInfo>
    implements $PayPayResultInfoCopyWith<$Res> {
  _$PayPayResultInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? codeId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayPayResultInfoImplCopyWith<$Res>
    implements $PayPayResultInfoCopyWith<$Res> {
  factory _$$PayPayResultInfoImplCopyWith(_$PayPayResultInfoImpl value,
          $Res Function(_$PayPayResultInfoImpl) then) =
      __$$PayPayResultInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, String codeId});
}

/// @nodoc
class __$$PayPayResultInfoImplCopyWithImpl<$Res>
    extends _$PayPayResultInfoCopyWithImpl<$Res, _$PayPayResultInfoImpl>
    implements _$$PayPayResultInfoImplCopyWith<$Res> {
  __$$PayPayResultInfoImplCopyWithImpl(_$PayPayResultInfoImpl _value,
      $Res Function(_$PayPayResultInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? codeId = null,
  }) {
    return _then(_$PayPayResultInfoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayPayResultInfoImpl implements _PayPayResultInfo {
  const _$PayPayResultInfoImpl(
      {required this.code, required this.message, required this.codeId});

  factory _$PayPayResultInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayPayResultInfoImplFromJson(json);

  @override
  final String code;
  @override
  final String message;
  @override
  final String codeId;

  @override
  String toString() {
    return 'PayPayResultInfo(code: $code, message: $message, codeId: $codeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPayResultInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.codeId, codeId) || other.codeId == codeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, codeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPayResultInfoImplCopyWith<_$PayPayResultInfoImpl> get copyWith =>
      __$$PayPayResultInfoImplCopyWithImpl<_$PayPayResultInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayPayResultInfoImplToJson(
      this,
    );
  }
}

abstract class _PayPayResultInfo implements PayPayResultInfo {
  const factory _PayPayResultInfo(
      {required final String code,
      required final String message,
      required final String codeId}) = _$PayPayResultInfoImpl;

  factory _PayPayResultInfo.fromJson(Map<String, dynamic> json) =
      _$PayPayResultInfoImpl.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  String get codeId;
  @override
  @JsonKey(ignore: true)
  _$$PayPayResultInfoImplCopyWith<_$PayPayResultInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayPayData _$PayPayDataFromJson(Map<String, dynamic> json) {
  return _PayPayData.fromJson(json);
}

/// @nodoc
mixin _$PayPayData {
  String get url => throw _privateConstructorUsedError;
  String get codeId => throw _privateConstructorUsedError;
  int get expiryDate => throw _privateConstructorUsedError;
  String get merchantPaymentId => throw _privateConstructorUsedError;
  PayPayAmount get amount => throw _privateConstructorUsedError;
  List<PayPayOrderItems> get orderItems => throw _privateConstructorUsedError;
  String get codeType => throw _privateConstructorUsedError;
  int get requestedAt => throw _privateConstructorUsedError;
  String get redirectUrl => throw _privateConstructorUsedError;
  String get redirectType => throw _privateConstructorUsedError;
  bool get isAuthorization => throw _privateConstructorUsedError;
  String get deeplink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayPayDataCopyWith<PayPayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayDataCopyWith<$Res> {
  factory $PayPayDataCopyWith(
          PayPayData value, $Res Function(PayPayData) then) =
      _$PayPayDataCopyWithImpl<$Res, PayPayData>;
  @useResult
  $Res call(
      {String url,
      String codeId,
      int expiryDate,
      String merchantPaymentId,
      PayPayAmount amount,
      List<PayPayOrderItems> orderItems,
      String codeType,
      int requestedAt,
      String redirectUrl,
      String redirectType,
      bool isAuthorization,
      String deeplink});

  $PayPayAmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$PayPayDataCopyWithImpl<$Res, $Val extends PayPayData>
    implements $PayPayDataCopyWith<$Res> {
  _$PayPayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? codeId = null,
    Object? expiryDate = null,
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? orderItems = null,
    Object? codeType = null,
    Object? requestedAt = null,
    Object? redirectUrl = null,
    Object? redirectType = null,
    Object? isAuthorization = null,
    Object? deeplink = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int,
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PayPayAmount,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<PayPayOrderItems>,
      codeType: null == codeType
          ? _value.codeType
          : codeType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int,
      redirectUrl: null == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      redirectType: null == redirectType
          ? _value.redirectType
          : redirectType // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthorization: null == isAuthorization
          ? _value.isAuthorization
          : isAuthorization // ignore: cast_nullable_to_non_nullable
              as bool,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayPayAmountCopyWith<$Res> get amount {
    return $PayPayAmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayPayDataImplCopyWith<$Res>
    implements $PayPayDataCopyWith<$Res> {
  factory _$$PayPayDataImplCopyWith(
          _$PayPayDataImpl value, $Res Function(_$PayPayDataImpl) then) =
      __$$PayPayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String codeId,
      int expiryDate,
      String merchantPaymentId,
      PayPayAmount amount,
      List<PayPayOrderItems> orderItems,
      String codeType,
      int requestedAt,
      String redirectUrl,
      String redirectType,
      bool isAuthorization,
      String deeplink});

  @override
  $PayPayAmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$PayPayDataImplCopyWithImpl<$Res>
    extends _$PayPayDataCopyWithImpl<$Res, _$PayPayDataImpl>
    implements _$$PayPayDataImplCopyWith<$Res> {
  __$$PayPayDataImplCopyWithImpl(
      _$PayPayDataImpl _value, $Res Function(_$PayPayDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? codeId = null,
    Object? expiryDate = null,
    Object? merchantPaymentId = null,
    Object? amount = null,
    Object? orderItems = null,
    Object? codeType = null,
    Object? requestedAt = null,
    Object? redirectUrl = null,
    Object? redirectType = null,
    Object? isAuthorization = null,
    Object? deeplink = null,
  }) {
    return _then(_$PayPayDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      codeId: null == codeId
          ? _value.codeId
          : codeId // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int,
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PayPayAmount,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<PayPayOrderItems>,
      codeType: null == codeType
          ? _value.codeType
          : codeType // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAt: null == requestedAt
          ? _value.requestedAt
          : requestedAt // ignore: cast_nullable_to_non_nullable
              as int,
      redirectUrl: null == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      redirectType: null == redirectType
          ? _value.redirectType
          : redirectType // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthorization: null == isAuthorization
          ? _value.isAuthorization
          : isAuthorization // ignore: cast_nullable_to_non_nullable
              as bool,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayPayDataImpl implements _PayPayData {
  const _$PayPayDataImpl(
      {required this.url,
      required this.codeId,
      required this.expiryDate,
      required this.merchantPaymentId,
      required this.amount,
      required final List<PayPayOrderItems> orderItems,
      required this.codeType,
      required this.requestedAt,
      required this.redirectUrl,
      required this.redirectType,
      required this.isAuthorization,
      required this.deeplink})
      : _orderItems = orderItems;

  factory _$PayPayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayPayDataImplFromJson(json);

  @override
  final String url;
  @override
  final String codeId;
  @override
  final int expiryDate;
  @override
  final String merchantPaymentId;
  @override
  final PayPayAmount amount;
  final List<PayPayOrderItems> _orderItems;
  @override
  List<PayPayOrderItems> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  final String codeType;
  @override
  final int requestedAt;
  @override
  final String redirectUrl;
  @override
  final String redirectType;
  @override
  final bool isAuthorization;
  @override
  final String deeplink;

  @override
  String toString() {
    return 'PayPayData(url: $url, codeId: $codeId, expiryDate: $expiryDate, merchantPaymentId: $merchantPaymentId, amount: $amount, orderItems: $orderItems, codeType: $codeType, requestedAt: $requestedAt, redirectUrl: $redirectUrl, redirectType: $redirectType, isAuthorization: $isAuthorization, deeplink: $deeplink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPayDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.codeId, codeId) || other.codeId == codeId) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.merchantPaymentId, merchantPaymentId) ||
                other.merchantPaymentId == merchantPaymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.codeType, codeType) ||
                other.codeType == codeType) &&
            (identical(other.requestedAt, requestedAt) ||
                other.requestedAt == requestedAt) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.redirectType, redirectType) ||
                other.redirectType == redirectType) &&
            (identical(other.isAuthorization, isAuthorization) ||
                other.isAuthorization == isAuthorization) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      codeId,
      expiryDate,
      merchantPaymentId,
      amount,
      const DeepCollectionEquality().hash(_orderItems),
      codeType,
      requestedAt,
      redirectUrl,
      redirectType,
      isAuthorization,
      deeplink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPayDataImplCopyWith<_$PayPayDataImpl> get copyWith =>
      __$$PayPayDataImplCopyWithImpl<_$PayPayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayPayDataImplToJson(
      this,
    );
  }
}

abstract class _PayPayData implements PayPayData {
  const factory _PayPayData(
      {required final String url,
      required final String codeId,
      required final int expiryDate,
      required final String merchantPaymentId,
      required final PayPayAmount amount,
      required final List<PayPayOrderItems> orderItems,
      required final String codeType,
      required final int requestedAt,
      required final String redirectUrl,
      required final String redirectType,
      required final bool isAuthorization,
      required final String deeplink}) = _$PayPayDataImpl;

  factory _PayPayData.fromJson(Map<String, dynamic> json) =
      _$PayPayDataImpl.fromJson;

  @override
  String get url;
  @override
  String get codeId;
  @override
  int get expiryDate;
  @override
  String get merchantPaymentId;
  @override
  PayPayAmount get amount;
  @override
  List<PayPayOrderItems> get orderItems;
  @override
  String get codeType;
  @override
  int get requestedAt;
  @override
  String get redirectUrl;
  @override
  String get redirectType;
  @override
  bool get isAuthorization;
  @override
  String get deeplink;
  @override
  @JsonKey(ignore: true)
  _$$PayPayDataImplCopyWith<_$PayPayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayPayOrderItems _$PayPayOrderItemsFromJson(Map<String, dynamic> json) {
  return _PayPayOrderItems.fromJson(json);
}

/// @nodoc
mixin _$PayPayOrderItems {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  PayPayAmount get unitPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayPayOrderItemsCopyWith<PayPayOrderItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayOrderItemsCopyWith<$Res> {
  factory $PayPayOrderItemsCopyWith(
          PayPayOrderItems value, $Res Function(PayPayOrderItems) then) =
      _$PayPayOrderItemsCopyWithImpl<$Res, PayPayOrderItems>;
  @useResult
  $Res call(
      {String name,
      int quantity,
      @JsonKey(name: 'unit_price') PayPayAmount unitPrice});

  $PayPayAmountCopyWith<$Res> get unitPrice;
}

/// @nodoc
class _$PayPayOrderItemsCopyWithImpl<$Res, $Val extends PayPayOrderItems>
    implements $PayPayOrderItemsCopyWith<$Res> {
  _$PayPayOrderItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? unitPrice = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as PayPayAmount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayPayAmountCopyWith<$Res> get unitPrice {
    return $PayPayAmountCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayPayOrderItemsImplCopyWith<$Res>
    implements $PayPayOrderItemsCopyWith<$Res> {
  factory _$$PayPayOrderItemsImplCopyWith(_$PayPayOrderItemsImpl value,
          $Res Function(_$PayPayOrderItemsImpl) then) =
      __$$PayPayOrderItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int quantity,
      @JsonKey(name: 'unit_price') PayPayAmount unitPrice});

  @override
  $PayPayAmountCopyWith<$Res> get unitPrice;
}

/// @nodoc
class __$$PayPayOrderItemsImplCopyWithImpl<$Res>
    extends _$PayPayOrderItemsCopyWithImpl<$Res, _$PayPayOrderItemsImpl>
    implements _$$PayPayOrderItemsImplCopyWith<$Res> {
  __$$PayPayOrderItemsImplCopyWithImpl(_$PayPayOrderItemsImpl _value,
      $Res Function(_$PayPayOrderItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? unitPrice = null,
  }) {
    return _then(_$PayPayOrderItemsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as PayPayAmount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayPayOrderItemsImpl implements _PayPayOrderItems {
  _$PayPayOrderItemsImpl(
      {required this.name,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice});

  factory _$PayPayOrderItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayPayOrderItemsImplFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final PayPayAmount unitPrice;

  @override
  String toString() {
    return 'PayPayOrderItems(name: $name, quantity: $quantity, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPayOrderItemsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, unitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPayOrderItemsImplCopyWith<_$PayPayOrderItemsImpl> get copyWith =>
      __$$PayPayOrderItemsImplCopyWithImpl<_$PayPayOrderItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayPayOrderItemsImplToJson(
      this,
    );
  }
}

abstract class _PayPayOrderItems implements PayPayOrderItems {
  factory _PayPayOrderItems(
          {required final String name,
          required final int quantity,
          @JsonKey(name: 'unit_price') required final PayPayAmount unitPrice}) =
      _$PayPayOrderItemsImpl;

  factory _PayPayOrderItems.fromJson(Map<String, dynamic> json) =
      _$PayPayOrderItemsImpl.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'unit_price')
  PayPayAmount get unitPrice;
  @override
  @JsonKey(ignore: true)
  _$$PayPayOrderItemsImplCopyWith<_$PayPayOrderItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayPayAmount _$PayPayAmountFromJson(Map<String, dynamic> json) {
  return _PayPayAmount.fromJson(json);
}

/// @nodoc
mixin _$PayPayAmount {
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayPayAmountCopyWith<PayPayAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayPayAmountCopyWith<$Res> {
  factory $PayPayAmountCopyWith(
          PayPayAmount value, $Res Function(PayPayAmount) then) =
      _$PayPayAmountCopyWithImpl<$Res, PayPayAmount>;
  @useResult
  $Res call({int amount, String currency});
}

/// @nodoc
class _$PayPayAmountCopyWithImpl<$Res, $Val extends PayPayAmount>
    implements $PayPayAmountCopyWith<$Res> {
  _$PayPayAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayPayAmountImplCopyWith<$Res>
    implements $PayPayAmountCopyWith<$Res> {
  factory _$$PayPayAmountImplCopyWith(
          _$PayPayAmountImpl value, $Res Function(_$PayPayAmountImpl) then) =
      __$$PayPayAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String currency});
}

/// @nodoc
class __$$PayPayAmountImplCopyWithImpl<$Res>
    extends _$PayPayAmountCopyWithImpl<$Res, _$PayPayAmountImpl>
    implements _$$PayPayAmountImplCopyWith<$Res> {
  __$$PayPayAmountImplCopyWithImpl(
      _$PayPayAmountImpl _value, $Res Function(_$PayPayAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$PayPayAmountImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayPayAmountImpl implements _PayPayAmount {
  const _$PayPayAmountImpl({required this.amount, required this.currency});

  factory _$PayPayAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayPayAmountImplFromJson(json);

  @override
  final int amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'PayPayAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPayAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPayAmountImplCopyWith<_$PayPayAmountImpl> get copyWith =>
      __$$PayPayAmountImplCopyWithImpl<_$PayPayAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayPayAmountImplToJson(
      this,
    );
  }
}

abstract class _PayPayAmount implements PayPayAmount {
  const factory _PayPayAmount(
      {required final int amount,
      required final String currency}) = _$PayPayAmountImpl;

  factory _PayPayAmount.fromJson(Map<String, dynamic> json) =
      _$PayPayAmountImpl.fromJson;

  @override
  int get amount;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$PayPayAmountImplCopyWith<_$PayPayAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
