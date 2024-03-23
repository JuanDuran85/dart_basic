class Hero {
  // properties
  String name;
  String power;
  String _lastName;
  bool isAlive;

  // constructor - Type 1
  // Hero(String inName, String inPower)
  //     : name = inName,
  //       power = inPower;

  // constructor - Type 2
  /* ----Assert
    While coding, it is hard to find errors in big projects, so dart provide a assert method to check for the error. It takes conditions as an argument. If the condition is true, nothing happens. If a condition is false, it will raise an error.  
  */
  Hero(
      {required this.name,
      required this.power,
      required this.isAlive,
      String lastName = 'last Name not found'})
      : assert(lastName.length > 3, 'The last name must be at least 3 characters long'),
      _lastName = lastName;

  // Constructor - Type 3. By name
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found',
        _lastName = json['lastName'] ?? 'no lastName found';

  @override
  String toString() {
    return 'Hero(name: $name, lastName: $_lastName,  power: $power, isAlive: ${isAlive ? "Yess" : "Noo"})';
  }

  // getters
  String get getLastName {
    return this._lastName;
  }

  String get fullName {
    return '$name $_lastName';
  }

  // setters

  void set setLastName(String value) {
    if (value.length < 3) {
      throw 'The last name must be at least 3 characters long';
    }
    this._lastName = value;
  }
}
