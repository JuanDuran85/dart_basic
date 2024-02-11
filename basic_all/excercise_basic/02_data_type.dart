main(){
  // ------------ numbers (var int final const late dynamic double)
  var a = 10;
  int b = 20;
  double c = 3.14;
  
  print(a);
  print(b);
  print(c);

  // ? conditional variable with null
  int? d = null;
  print(d);

  // int + int = int // double + int = double
  double result = a + c;
  print(result);

  // ------------ string
  String name = 'Duran';
  print(name);
  String name2 = 'Duran\'s';
  String name3 = "Duran's";
  String multiLine = '''
  this is a multi line string
  with some values variables
  like a name3: $name3
  ''';
  String firstName = 'Juan';
  String lastName = 'Duran';
  String fullName = '$firstName $lastName';
  print(fullName);
  print(name2);
  print(name2 == name);
  print(name3);
  print(name2 == name3);
  print(multiLine);

  // ------------ boolean
  // we can use the ! operator to invert the value (careful)
  bool isTrue = true;
  print(isTrue);
  bool isFalse = !isTrue;
  print(isFalse);

  // ------------ list (like an array)
  // old way (deprecated) to create a list: new List();
  List<int> numbersList = [2,5,6,2,4];
  print(numbersList);
  List<String> namesList = ['Tess','Roosevelt','Declan','Randy'];
  print(namesList);
  namesList[0] = 'Jalon';
  print(namesList);
}