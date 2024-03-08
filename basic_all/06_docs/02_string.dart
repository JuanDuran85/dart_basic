void main(List<String> args) {
  // ---------- Strings methods

  String name = 'Juan';
  String lastName = 'Duran';

  String fullName1 = name + ' ' + lastName;
  String fullName2 = '$name $lastName';
  String fullName3 = '$name' ' ' 'Duran';

  print(fullName1);
  print(fullName2);
  print(fullName3);

  //! properties, operators and methods

  //? 1. length: The length of the string. Returns the number of UTF-16 code units in this string. The number of runes might be fewer if the string contains characters outside the Basic Multilingual Plane (plane 0):
  print('Length: ${fullName1.length}');

  //? 2. contains: Returns true if the string contains the specified pattern. Whether this string contains a match of other.

  print('Contains Juan: ${fullName1.contains('Juan')}');
  print('Contains N: ${fullName1.contains('N')}');
  // If startIndex is provided, this method matches only at or after that index. The startIndex must not be negative or greater than length.
  print('Contains r at index 4: ${fullName1.contains('r', 9)}');

  //? 3. EndsWith: Returns true if the string ends with the specified pattern. Whether this string ends with a match of other.
  print('Ends with r: ${fullName1.endsWith('r')}');
  print('Ends with n: ${fullName1.endsWith('n')}');

  //? 4. padLeft: Returns a copy of this string with the specified number of leading characters replaced by the specified string.
  print('Pad left with .: ${fullName1.padLeft(15, '.')}');

  //? 5. PadRight: Returns a copy of this string with the specified number of trailing characters replaced by the specified string.
  print('Pad right with .: ${fullName1.padRight(15, '.')}');

  //? 6. RepleaceAll: Returns a new string with all occurrences of old replaced with new.
  print('Replace all r: ${fullName1.replaceAll('u', 'U')}');
  print('Replace all n: ${fullName1.replaceAll(RegExp(r'n'), 'N')}');

  //? 7. Substring: Returns a new string which is a substring of this string.
  print('Substring between 3 and 7: ${fullName1.substring(3, 7)}');

  //? 8. IndexOf: Returns the index of the first occurrence of the specified substring in this string, or -1 if not found.
  print('indexOf ' ': ${fullName1.indexOf(' ')}');

  //? Operator []: Returns the character at the given index in the string.
  print('Operator [0]: ${fullName1[0]}');
  print('Operator [3]: ${fullName1[3]}'); 
  print('Operator [7]: ${fullName1[7]}'); 

  //? Operator *: Returns a string with the specified number of copies of this string.
  print('Operator *: ${fullName1 * 2}');

}
