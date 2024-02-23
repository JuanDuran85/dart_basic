import 'dart:io';

void main(List<String> args) {
  // ---------- future with files

  print(Directory.current.path);

  File fileIn = new File( Directory.current.path + '\\basic_all\\04_another_types\\assets\\person.txt');

  //print(' File path: ' + fileIn.path);
  //print(fileIn.uri);

  Future<String> file_result = fileIn.readAsString();
  print('File async: ');
  file_result.then(print);


  String fileNotAsync = fileIn.readAsStringSync();
  print('File no async: ');
  print(fileNotAsync);

  print('End main function');

}