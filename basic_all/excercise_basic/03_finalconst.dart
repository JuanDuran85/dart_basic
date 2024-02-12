void main(List<String> args) {
  // ---------- final and const
  // final is low memory use, but you can change the values
  // with const you can not change the original values

  final List<String> personFinal = ['Aylin','Ethelyn','Hillard'];
  personFinal.add('Sydnie');
  print(personFinal);

  // The word "const" can be used at the beginning before the equal sign or at the beginning after the equal sign.

  const List<String> personOneConst = ['Maria', 'Fernando', 'Juan'];
  List<String> personTwoConst = const['Maria','Fernando','Juan'];
  print(personOneConst);
  print(personTwoConst);

  // ---------- late initial
  // The late modifier has two use cases: 
  // Declaring a non-nullable variable that's initialized after its declaration.
  // Lazily initializing a variable.

  late final double x;
  x=23.53;
  print(x);


}