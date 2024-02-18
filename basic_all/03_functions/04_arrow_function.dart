
// Arrow Function: For functions that contain just one expression, you can use a shorthand syntax instead of a full function definition. This is called the arrow syntax. Only an expression—not a statement—can appear between the arrow (=>) and the semicolon (;). For example, you can't put an if statement there, but you can use a conditional expression.
int sum(int a, int b) => a + b;

// Main Function
void main(List<String> args) {
  int result = sum(10, 20);
  print(result);


  List<int> listNumbers = [2,5,4,6,3,7,8,9,1,0,4,7,3,4,7,3,4,7,8,3,2,5,7,8,5,2,7,9,8];
  print(listNumbers);

  Iterable<int> newList = listNumbers.where((n) => n > 5);
  print(newList);

  print(newList.toSet());
  print(newList.toList());
  print(newList.toSet().toList());
}