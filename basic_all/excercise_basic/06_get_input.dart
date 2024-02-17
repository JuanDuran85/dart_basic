import 'dart:io';

void main(List<String> args) {
  // ---------- get input

  // terminal print
  stdout.writeln('Hello!!!!');
  stdout.writeln('What is your name?');
  // get input
  String? name = stdin.readLineSync();
  stdout.writeln('Hello $name');

  stdout.writeln('What is your lastname?');
  String name2 = stdin.readLineSync() ?? 'Duran';
  stdout.writeln('Hello $name2');
}