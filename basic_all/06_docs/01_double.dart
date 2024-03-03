void main(List<String> args) {
  // double
  // Documentation: https://api.dart.dev/stable/3.3.0/dart-core/double-class.html

  double numberX = 35.633456;
  double numberY = -35.633456;

// The sign of the double's numerical value. Returns -1.0 if the value is less than zero, +1.0 if the value is greater than zero, and the value itself if it is -0.0, 0.0 or NaN.
  print('Sing of the double number: ${numberX.sign}. The double number: $numberX');
  print('Sing of the double number: ${numberY.sign}. The double number: $numberY');
}
