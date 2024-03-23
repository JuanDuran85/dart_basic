class Hero {
  // properties
  String name;
  String power;
  bool isAlive;

  // constructor - Type 1
  // Hero(String inName, String inPower)
  //     : name = inName,
  //       power = inPower;

  // constructor - Type 2
  Hero({required this.name, required this.power, required this.isAlive});

  // Constructor - Type 3. By name
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found';

  @override
  String toString() {
    return 'Hero(name: $name, power: $power, isAlive: ${isAlive ? "Yess" : "Noo"})';
  }
}
