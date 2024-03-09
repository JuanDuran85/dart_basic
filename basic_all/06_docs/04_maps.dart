void main(List<String> args) {
  // ---------- Maps
  final person = {'name': 'Nina', 'lastName': 'Morar', 'age': 43};

  final address = {'city': 'Cape Town', 'country': 'South Africa'};

  print('person $person');
  print('address $address');

  //? 1. length: The length of the map. Returns the number of elements in this map.
  print('Length of person: ${person.length}');

  //? 2. keys: Returns a list of all the keys in the map.
  print('Keys of person: ${person.keys}');

  //? 3. values: Returns a list of all the values in the map.
  print('Values of person: ${person.values}');

  //? 4. entries: Returns a list of all the entries in the map.
  print('Entries of person: ${person.entries}');

  //? 5. addAll: Adds all the entries from another map to this map.
  person.addAll(address);
  print('New person with address - AddAll: ${person}');

  //? 6.  addEntries: Adds all the entries from another map to this map. Adds all key/value pairs of newEntries to this map. If a key of newEntries is already in this map, the corresponding value is overwritten. The operation is equivalent to doing this[entry.key] = entry.value for each MapEntry of the iterable.
  person.addEntries(address.entries);
  print('New person with address - AddEntries: ${person}');

  //? 7. Remove: Removes the entry with the specified key. If the key is not found, no action is taken and the original map is returned.
  person.remove('city');
  print('New person without city - Remove: ${person}');

  //? 8. removeWhere: Removes all entries where the given predicate returns true. Returns a new map with the removed entries.
  person.removeWhere((key, value) => key == 'age');
  print('New person without age - RemoveWhere: ${person}');
}
