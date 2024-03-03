mixin Family {
  void getBark(String name) {
    final nowDate = DateTime.now();
    print('The animal with the name: $name, is barking at $nowDate');
  }
}

mixin Order {
  void getBarkTwo(String name) {
    final nowDate = DateTime.now();
    print('The animal with the name: $name, is barking at $nowDate');
  }
}

abstract class Genus with Family {
  String name = "Dog";

  Genus() {
    getBark(name);
  }

  void alive() {
    getBark("--no name--");
  }
}

class GoldenRetriever extends Genus with Order, Family {
  GoldenRetriever(String name) {
    this.name = name;
    getBark('The name is: $name');
    getBarkTwo('The name is: $name');
  }
}
