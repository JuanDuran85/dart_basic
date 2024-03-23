void main(List<String> args) {
  print('Suma: ${addTwoNumber(10, 20)}');
}


int addTwoNumber(int a, int b) => a + b;
int addTwoNumberOptional(int a, [int b = 0]) {
  
 // b ??= 0; 
  
  return a + b;
}

