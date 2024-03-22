import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'merchant_payment_id.g.dart';

@Riverpod(keepAlive: true)
class MerchantPaymentIdNotifier extends _$MerchantPaymentIdNotifier {
  @override
  String? build() {
    return null;
  }

  void setMerchantPaymentId(String id) {
    state = id;
  }
}
