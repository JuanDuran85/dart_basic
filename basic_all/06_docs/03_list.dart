void main(List<String> args) {
  // ---------- List

  List<int> list1 = [1,2,3,4,5];
  List<int>? list2;
  List<int> list3 = [4,6,2,1,-6];
  List<String> names = ['Hermina','Ila'];

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

}