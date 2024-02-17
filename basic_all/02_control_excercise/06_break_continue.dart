void main(List<String> args) {
  // ------------ break and continue

// break using
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print('Index: $i');
  }

  print("  ");
// continue using
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print('Index: $i');
  }
}
