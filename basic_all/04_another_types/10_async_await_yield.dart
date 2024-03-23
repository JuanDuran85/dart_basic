void main(List<String> args) {
  emitNumber().listen((int event) {
    print(event);
  });
}

Stream<int> emitNumber() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
