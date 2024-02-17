import 'dart:io';

void main(List<String> args) {
  // ---------- if else

  stdout.writeln('What is your age?');
  int edad = int.parse(stdin.readLineSync() ?? '0');
  stdout.writeln('Your age is $edad');
  if (edad >= 18) {
    stdout.writeln('You can vote');
  } else {
    stdout.writeln('You can not vote');
  }

  if (edad >= 21) {
    stdout.writeln('Citizen');
  } else if (edad >= 18 && edad <= 20) {
    stdout.writeln('Adult');
  } else {
    stdout.writeln('Minor');
  }


}