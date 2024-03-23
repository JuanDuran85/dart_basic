import 'classes/hero_class.dart';

void main(List<String> args) {
  //--------------------------------------------------
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneration', isAlive: true);
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  //--------------------------------------------------

  final Map<String, dynamic> wolverineMap = {
    'name': 'Logan',
    'power': 'Regeneration',
    'isAlive': true
  };
  final Hero wolverine2 = new Hero(name: 'Logan', power: 'Regeneration', isAlive: wolverineMap['isAlive'] ?? false);

  print(wolverine2);
  print(wolverine2.name);
  print(wolverine2.power);

    //--------------------------------------------------

  final Map<String, dynamic> rawJson = {
    'name': 'Tony',
    'power': 'Money',
    'isAlive': true,
    'lastName': 'Stark'
  };
  final Hero ironMan = new Hero.fromJson(rawJson);

  print(ironMan);
  print(ironMan.name);
  print(ironMan.power);
  print(ironMan.getLastName);
}
