void main(List<String> args) {
  // double
  // Documentation: https://api.dart.dev/stable/3.3.0/dart-core/double-class.html

  double numberX = 35.633456;
  double numberY = -35.633456;
  double infiniteNumber = double.infinity;

// The sign of the double's numerical value. Returns -1.0 if the value is less than zero, +1.0 if the value is greater than zero, and the value itself if it is -0.0, 0.0 or NaN.
  print('Sing of the double number: ${numberX.sign}. The double number: $numberX');
  print('Sing of the double number: ${numberY.sign}. The double number: $numberY');

  //  isFinite → bool: True if the number is finite; otherwise, false. The only non-finite numbers are NaN, positive infinity, and negative infinity.

  print('isFinite of the double number is: ${numberX.isFinite}. The double number: $numberX}');
  print('IsInfinite: ${infiniteNumber.isInfinite}, from: $infiniteNumber');

  // abs: Returns the absolute value of this double.
  print('The absolute value for the number: $numberY is /${numberY.abs()}/');

  // ceil: Returns the least integer no smaller than this. If this is not finite (NaN or infinity), throws an UnsupportedError.

  print('the ceil for the number: $numberX, is / ${numberX.ceil()} / ');

  // ceilToDouble: Returns the least integer double value no smaller than this.
  print('the ceilToDouble for the number: $numberY, is / ${numberY.ceilToDouble()} / ');

  // round: Returns the integer closest to the number.
  print('the round of the number: $numberX, is / ${numberX.round()} /');

  // roundToDouble: Returns the integer double value closest to the number.
  print('the roundToDouble of the number: $numberX, is / ${numberX.roundToDouble()} /');

  // clamp: Returns this num clamped to be in the range lowerLimit-upperLimit.
  print(
      'the clamp of the number: $numberX, is / ${numberX.clamp(36, 38)} /');

}
