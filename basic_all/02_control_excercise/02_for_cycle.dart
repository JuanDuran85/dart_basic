import 'dart:io';

void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print('Index: $i');
  }

  stdout.writeln('Multiplication table');
  stdout.writeln('Enter the base number: ');
  int number = int.parse(stdin.readLineSync() ?? '0');

  for (var i = 0; i < 11; i++) {
    stdout.writeln('$number x $i = ${number * i}');
  }

 // .length is a property of List to get the length of the list
  List<String> names = ['Haley', 'Jarod', 'Waldo'];

  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
}