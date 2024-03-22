import 'dart:math';

String randomIntWithRange() {
  const max = 10000000;
  const min = 1000000;
  // min 以上 max 未満 の範囲で乱数を生成
  final value = Random().nextInt(max - min) + min;
  return value.toString();
}
