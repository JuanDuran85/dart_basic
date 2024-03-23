class Hero {
  // properties
  String name;
  String power;

  // constructor - Type 1
  // Hero(String inName, String inPower)
  //     : name = inName,
  //       power = inPower;

  // constructor - Type 2
  Hero({required this.name, required this.power});

  @override
  String toString() {
    return 'Hero(name: $name, power: $power)';
  }
}
