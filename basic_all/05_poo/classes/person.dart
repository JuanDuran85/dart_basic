class Person {
  String? name;
  String? lastName;
  String? country;
  // For private properties use underscore
  String? _city = 'Cape Town';

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
