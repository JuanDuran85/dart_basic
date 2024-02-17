void main(List<String> args) {
  // ---------- label for

  outerLoop:
  for (var i = 0; i < 10; i++) {
    
    print('Outer: $i');

    // ignore: unused_label
    innerLoop:
    for (var i = 1; i < 10; i++) {
      print('Inner: $i');

      if (i == 6) {
        break outerLoop;
      }
    }

  }

}