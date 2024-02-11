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
  List<int> numbersList = [2,5,6,2,4,2,4,6,2,7,4,6,2,1,3,5,7,3,8,9,0,1,3,6,7];
  print(numbersList);
  List<String> namesList = ['Tess','Roosevelt','Declan','Randy'];
  print(namesList);
  namesList[0] = 'Jalon';
  namesList.add('Darien');
  namesList.add('Darien');
  namesList.add('Darien');
  print(namesList);

  // ------------ Sets (like an array but with no duplicates)
  Set<int> numbersSet = {2,5,6,4};
  print(numbersSet);
  Set<String> namesSet = {'Tess','Roosevelt','Declan','Randy'};
  namesSet.add('Darien');
  namesSet.add('Darien');
  namesSet.add('Darien');
  print(namesSet);
  Set<int> numbersSetFinal = numbersList.toSet(); // convert list to set
  print(numbersSetFinal);
  List<int> newNumbersList = numbersSetFinal.toList();
  print(newNumbersList);

  // ------------ Maps (like an object - dictionary)
  Map<String, dynamic> personOne = {
    'name': 'Juan',
    'lastName': 'Duran',
    'age': 25,
  };
  print(personOne);
  print(personOne['name']);
  print(personOne['lastName']);
  print(personOne['age']);

  Map<double, dynamic> tasksToRun = {
    1.0: 'Run',
    1.1: 'Task 1',
    2.0: 777,
    2.1: true
  };
  print(tasksToRun);
  print(tasksToRun[2.1]);

  // another way to create a map
  Map<String, dynamic> personTwo = new Map();
  personTwo.addAll({ // to add values
    'name': 'Juan',
    'lastName': 'Duran',
    'age': 35,
  });
  print(personTwo);

  Map<int, int> tabla = {
    1:2,
    3:4,
    5:6,
    7:8,
    9:10,
  };
  print(tabla);
  print(tabla[10]);


}