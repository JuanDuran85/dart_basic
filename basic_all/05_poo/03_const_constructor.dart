import 'classes/const_constructor_class.dart';

void main(List<String> args) {
  // const constructor.
  //If your class produces objects that never change, you can make these objects compile-time constants. To do this, define a const constructor and make sure that all instance variables are final.
  // If instances of a class with a constant constructor have the same values, they will always point to the same memory location.

  const xplace = const Location(54.2564, -2.123);
  const yplace = const Location(54.2564, -2.123);
  const zplace = const Location(54.2564, -2.123);

  print(xplace == yplace);
  print(xplace == zplace);
}
