import 'classes/square.dart';

void main(List<String> args) {
  final squareOne = Square(5);
  print(squareOne.area);

  // 'side' can't be used as a setter because it's final.
  // squareOne.side = 30;
}