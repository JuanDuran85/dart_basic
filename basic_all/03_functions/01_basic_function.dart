void main(List<String> args) {
  // ---------- basic function
  saludar();
  print(saludar());
  String result = saludar();
  print(result);
}

String saludar() {
  print('Hello function');
  return 'Hello World';
}
