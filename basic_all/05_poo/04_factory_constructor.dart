import 'classes/geometric_figure.dart';

void main(List<String> args) {
  // ---------- factory constructor

  // Use the factory keyword when implementing a constructor that doesn't always create a new instance of its class. For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype. Another use case for factory constructors is initializing a final variable using logic that can't be handled in the initializer list.

  final figure = GeometricFigure(10, 10);
  print(figure);
  final figure2 = GeometricFigure(3, 7);
  print(figure2);
}