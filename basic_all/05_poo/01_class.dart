import 'classes/person.dart';

void main(List<String> args) {
  // ---------- class

  Person personOne = new Person("Message for the constructor", rank: 2323);
  print(personOne);

  // ---------- class with properties.
  // casquete operator
  personOne
    ..name = 'Juan'
    ..lastName = 'Duran'
    ..country = 'Brasil';

  print(personOne.getFullName);
  print(personOne.city);
  personOne.city = 'Amazonas';
  print(personOne.city);
  print(personOne);

  new Person.newPersonOne();
}
