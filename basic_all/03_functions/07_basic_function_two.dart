void main(List<String> args) {
  print('Suma: ${addTwoNumber(10, 20)}');
  print(greetPerson(lastName: "Perez"));
}


int addTwoNumber(int a, int b) => a + b;
int addTwoNumberOptional(int a, [int b = 0]) {
  
 // b ??= 0; 
  
  return a + b;
}

// optional parameters
String greetPerson({String name = '', String? message, required String lastName}) {
  return 'Hello $name $lastName. $message';
}
