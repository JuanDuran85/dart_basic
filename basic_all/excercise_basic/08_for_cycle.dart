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
}