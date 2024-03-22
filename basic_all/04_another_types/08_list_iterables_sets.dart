void main(List<String> args) {
  final numbers = [1, 2, 3, 4, 5, 5,5,6, 7,7, 8,8,8,8,8, 9,9, 10];

  print('---------------------------------');
  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  print('---------------------------------');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  print('ToString: ${reversedNumbers.toString()}');
  print('---------------------------------');

  final numbersGreaterThanFive = numbers.where((int element) => element > 5);
  print('>5: ${numbersGreaterThanFive.toSet().toList()}');

}