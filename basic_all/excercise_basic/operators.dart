void main(List<String> args) {
  // ?Arithmetic operators

  // + Add
  // - Subtract
  // * Multiply
  // / Divide
  // % Modulus Get the remainder of an integer division
  // ~/ Truncate: Divide, returning an integer result
  // -expr Unary minus, also known as negation (reverse the sign of the expression)

  double b = 10 / 2;
  print(b);

  b = 1000 % 3;
  print(b);

  int c = 10 ~/ 3;
  print(c);

  // ?Assignment operators
  // = Assign
  // += Add and assign
  // -= Subtract and assign
  // *= Multiply and assign
  // /= Divide and assign
  // %= Modulus and assign
  // ~/= Truncate and assign
  // &= Bitwise AND and assign
  // |= Bitwise OR and assign
  // ^= Bitwise XOR and assign
  // <<= Left shift and assign
  // >>= Right shift and assign
  // -- Decrement
  // ++ Increment
  // ??= Null-aware assignment

  int d = 1;
  d += 2;
  print(d);

  d -= 5;
  print(d);

  d++;
  print(d);
  d--;
  print(d);

  int? a;
  a ??= 20;
  print(a);
  int e = 3;
  e ??= 30;
  print(e);

  // ?Logical operators
  // && Logical and
  // || Logical or
  // ! Logical not

  // ?Relational or dconditional operators
  // < Less than
  // > Greater than
  // <= Less than or equal to
  // >= Greater than or equal to
  // == Equal
  // != Not equal
  // === Identical
  // !== Not identical
  // ?? Null-aware

  int f = 10;
  print("F: $f");
  String response = f > 5 ? 'Greater than 5' : 'Lower than 5';
  print(response);
  int? x;
  int? g = x ?? c;
  print(g);

  String personOne = "Juan";
  String personTwo = "Maria";

  print(personOne == personTwo);
  print(personOne != personTwo);

  // is: operator to check if an object is of a certain type
  print(personOne is int);
  print(f is! String);

int? h;
h = 10;
h ??= 20;
print(h);
}
