import 'classes/service_singleton.dart';

void main(List<String> args) {
  // ---------- singleton class pattern

  final singleOne = new MyService();
  singleOne.url = 'http://localhost:8081';

  final singleTwo = new MyService();
  singleTwo.url = 'http://localhost:8082';

  print(singleOne == singleTwo);

  print(singleOne.url);
  print(singleTwo.url);
}