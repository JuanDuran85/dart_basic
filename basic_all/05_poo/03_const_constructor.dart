import 'classes/const_constructor_class.dart';

void main(List<String> args) {
  // const constructor.
  // If instances of a class with a constant constructor have the same values, they will always point to the same memory location.

  const xplace = const Location(54.2564, -2.123);
  const yplace = const Location(54.2564, -2.123);
  const zplace = const Location(54.2564, -2.123);

  print(xplace == yplace);
  print(xplace == zplace);
}
