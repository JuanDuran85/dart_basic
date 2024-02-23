void main(List<String> args) {
  // ---------- catch error

  Future<String> timeoutExample = Future.delayed(Duration(seconds: 4), () {
    if (2 == 2) {
      throw 'Error example from throw error timer';
    }

    return 'Error example return value';
  });

  timeoutExample.then(print).catchError((error) => print(error));

  print('End main function');
}
