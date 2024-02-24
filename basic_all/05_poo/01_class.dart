import 'classes/person.dart';

void main(List<String> args) {
  // ---------- class

  Person personOne = new Person();
  print(personOne);

  // ---------- class with properties.
  // casquete operator
  personOne
    ..name = 'Juan'
    ..lastName = 'Duran'
    ..country = 'Brasil';

  print(personOne);
}
