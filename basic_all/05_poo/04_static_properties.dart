import 'classes/static_properties.dart';

void main(List<String> args) {
  // ---------- static properties and methods


  Tools.toolsList.add('screwdriver');
  Tools.toolsList.forEach(print);
  print(Tools.toolsCount);
  print(Tools.toolsList);

  Tools.getTools();
}