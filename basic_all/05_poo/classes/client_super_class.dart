class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void printFullData() => print('Name: $name, age: $age');
}

class Client extends Person {
  String? address;
  List<String> orders = [];

  Client(int actualAge, String actualName) : super(actualName, actualAge);

  void getOrders() => print('Orders: $orders');
}
