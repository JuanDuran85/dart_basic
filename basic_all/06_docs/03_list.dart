void main(List<String> args) {
  // ---------- List

  List<int> list1 = [1, 2, 3, 4, 5];
  List<int>? list2;
  List<int> list3 = [4, 6, 2, 1, -6];
  List<String> names = ['Hermina', 'Ila', 'Alana', 'Thurman', 'Jameson'];

  print(list1);
  print(list2);
  print(list3);
  print(names);

  // properties and methods

  //? 1. length: The length of the list. Returns the number of elements in this list.
  print('Length: ${list1.length}');

  //? 2. first: The first element of the list. Returns the first element in the list.
  print('First: ${list1.first}');

  //? 3. last: The last element of the list. Returns the last element in the list.
  print('Last: ${list1.last}');

  //? 4. isEmpty: Returns true if the list is empty.
  print('is the list empty? ${list1.isEmpty}');
  // ignore: dead_code
  print('is the list empty? ${list2?.isEmpty}');
  // ignore: unnecessary_null_comparison
  print('is the list empty? ${list2 == null}');

  //? 5. asMap: Returns a Map view of the list.
  print('asMap ${list1.asMap()}');
  Map mapList = list1.asMap();
  print(mapList[1]);

  Map mapName = names.asMap();
  print(mapName);
  print(mapName[0]);

  //? 6. forEach: Applies the provided function to each element of the list.
  list3.forEach((element) {
    print(element);
  });

  //? 7. indexOf: Returns the first index of an element in the list.
  print('Index of 6: ${list3.indexOf(6)}');
  print('Index of hermina: ${names.indexOf('hermina')}');

  //? 8.join: Returns a string representation of the list.
  print('join: ${list3.join(',')}');

  //? 9. indexWhere: Returns the first index of an element in the list.
  int result = list3.indexWhere((element) => element <= 1);
  print('indexWhere: $result');

  //? 10. Remove: Removes the first occurrence of an element from the list. Returns true if value was in the list, false otherwise.
  print('list3: $list3');
  list3.remove(6);
  print('list3 without 6: $list3');

  //? 11. shuffle: Shuffles the elements of the list.
  print('list3: $list3');
  list3.shuffle();
  print('list3 shuffled: $list3');

  //? 12. sort: Sorts the elements of the list in ascending order.
  print('list3: $list3');
  list3.sort();
  print('list3 sorted: $list3');
  print('names: $names');
  names.sort((a, b) => a.compareTo(b));
  print('names sorted: $names');

  //? 13. reverse: Reverses the elements of the list.
  print('reverse list3: ${list3.reversed.toList()}');

  //? 14. map: Applies the provided function to each element of the list and returns a new list.
  print('list3: $list3');
  final newList3 = list3.map((e) => e * 2);
  print('newList3: $newList3');
  print('names: $names');
  final newNamesList = names.map((name) => name.toUpperCase()).toList();
  print('newNamesList: $newNamesList');



  
}
