String capitalize(String text) {
// In this case, the variable is not a reference, because it is a new value in memory
  text = text.toUpperCase();
  return text;
}

// with object, Dart will pass as reference the value
Map<String, String> mapCapitalize(Map<String, String> mapIn) {
  mapIn = {...mapIn}; // destructuring operator
  mapIn['name'] = mapIn['name']?.toUpperCase() ?? 'no name';
  return mapIn;
}

// Main Function
void main(List<String> args) {
  // ---------- primitive values
  String text = 'hello';
  String text2 = capitalize(text);
  print(text);
  print(text2);

  // ---------- Objects values
  Map<String, String> person = {
    'name': 'Juan',
  };
  Map<String, String> person2 = mapCapitalize(person);
  print(person);
  print(person2);
}
