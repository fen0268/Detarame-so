// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paypay_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$payPayServiceHash() => r'86c4905b3b16c56daba7cb8bc890f2376d44a359';

/// See also [PayPayService].
@ProviderFor(PayPayService)
final payPayServiceProvider =
    NotifierProvider<PayPayService, PayPayClient>.internal(
  PayPayService.new,
  name: r'payPayServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$payPayServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PayPayService = Notifier<PayPayClient>;
String _$merchantPaymentIdNotifierHash() =>
    r'e5b16ed207e9877ea5bbb5368190b77ce6145733';

/// See also [MerchantPaymentIdNotifier].
@ProviderFor(MerchantPaymentIdNotifier)
final merchantPaymentIdNotifierProvider =
    NotifierProvider<MerchantPaymentIdNotifier, String>.internal(
  MerchantPaymentIdNotifier.new,
  name: r'merchantPaymentIdNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$merchantPaymentIdNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MerchantPaymentIdNotifier = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
