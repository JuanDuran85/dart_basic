import 'dart:io';

void main(List<String> args) {
  // ---------- while

  int i = 0;

  while (i < 10) {
    print('Index: $i');
    i++;
  }

  stdout.writeln('Multiplication table');
  String continueProces = 'y';
  while (continueProces == 'y') {
  
  stdout.writeln('Enter the base number: ');
  int number = int.parse(stdin.readLineSync() ?? '0');
    for (var i = 0; i < 11; i++) {
      stdout.writeln('$number x $i = ${number * i}');
    }

  stdout.writeln('Do you want to continue?');
  continueProces = (stdin.readLineSync() ?? 'No').toLowerCase();
  }
}