// parameter function - required positional parameters.
void sayHello(String mensaje, int age) {
  print('The mensage is: $mensaje: $age');
}

// null parameter function - required positional parameters with null.
void nullableSayHello(String? mensaje, int? age) {
  print('The mensage is: $mensaje: $age');
}

// Optional positional parameters: Wrapping a set of function parameters in [] marks them as optional positional parameters. If you don't provide a default value, their types must be nullable as their default value will be null:
void optionalPositionalParameters(String name,
    [int age = 0, String country = '<country name here>']) {
  print('The name is: $name and the age is: $age and the country is: $country');
}

/*
Named parameters: are optional unless they're explicitly marked as required. When defining a function, use {param1, param2, …} to specify named parameters. If you don't provide a default value or mark a named parameter as required, their types must be nullable as their default value will be null:
*/
void namedPositionalParameters(
    {String? name, required int age, String country = '<country name here>'}) {
  print('The name is: $name and the age is: $age and the country is: $country');
}

// mixed parameters positional and named parameters
void mixedParameters(String name, {required String lastName, String? city, int population = 0}){
  print('The name is: $name and the last name is: $lastName and the city is: $city and the population is: $population');
}

// MAIN FUNCTION
void main(List<String> args) {
  // ---------- argument function
  print('-----argument function-----');
  sayHello('---Hello---', 20);
  nullableSayHello('---Hello---', null);

  // ---------- optional positional parameters
  print('-----optional positional parameters-----');
  optionalPositionalParameters('Juan', 25);
  optionalPositionalParameters('Maria', 25, 'Colombia');
  optionalPositionalParameters('Pedro');

  // ---------- named parameters
  print('-----named parameters-----');
  namedPositionalParameters(name: 'Juan', age: 25, country: 'Nigeria');
  namedPositionalParameters(age: 25, country: 'Nigeria');
  namedPositionalParameters(name: 'Juan', age: 25);
  namedPositionalParameters(age: 32);

  // ---------- mixed parameters
  print('-----mixed parameters-----');
  mixedParameters('Juan', lastName: 'Duran', city: 'Cape Town', population: 10);
}
