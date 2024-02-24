class Person {
  String? name;
  String? lastName;
  String? country;
  // For private properties use underscore
  String? _city = 'Cape Town';
  String? messageContructor;
  int? rank;
  bool? status;

  // constructor - 1st method
  Person(String messageContructorIn, {this.status = true, required this.rank}) {
    print('-----constructor-----');
    this.messageContructor = messageContructorIn;
    print(
        'messageContructor: $messageContructor - rank: $rank - status: $status');
  }

  // constructor - 2nd method
  // Person(this.messageContructor,  {this.rank});

  /**
   * In DART there is no constructor overloading and therefore we cannot define multiple constructors based on different types or numbers of parameters.

    To resolve this, DART allows you to create multiple constructors with different names of the form: class_name.constructor_name(parameters).
   */

  Person.newPersonOne({ String messageContructorIn = 'New person'}) {
    this.messageContructor = messageContructorIn;
    print('messageContructor in newPersonOne: $messageContructor');
  }

  String? get getFullName => '$name $lastName';

  String get city {
    return _city?.toUpperCase() ?? 'No city specified';
  }

  void set city(String value) {
    _city = value;
  }

  @override
  String toString() =>
      'The name is: $name and the last name is: $lastName and the country is: $country and the city is: $_city';
}
