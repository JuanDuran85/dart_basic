void main(List<String> args) {
  /**
   * Key terms
     - synchronous operation: A synchronous operation blocks other operations from executing until it completes.
     - synchronous function: A synchronous function only performs synchronous operations.
     - asynchronous operation: Once initiated, an asynchronous operation allows other operations to execute before it completes.
     - asynchronous function: An asynchronous function performs at least one asynchronous operation and can also perform synchronous operations.
   */

  /**
     * A future (lower case "f") is an instance of the Future (capitalized "F") class. A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.
     */
  // ---------- future

  Future<String> timeoutExample = Future.delayed(Duration(seconds: 3), () {
    print('Timeout example 3 seconds');
    return 'Timeout example 3 seconds return value';
  });

  timeoutExample.then(print);

  print('End main function');

  // ----------------------------------------------

  // !Future
  // In dart, the Future represents a value or error that is not yet available. It is used to represent a potential value, or error, that will be available at some time in the future.

  //  Future represents the result of an asynchronous operation and can have 2 states.
  //  - uncompleted: When you call an asynchronous function, it returns to an uncompleted future. It means the future is waiting for the function asynchronous operation to finish or to throw an error.
  //  - completed: It can be completed with value or completed with error. Future<int> produces an int value, and Future<String> produces a String value. If the future doesn’t produce any value, then the type of future is Future<void>

  // If the asynchronous operation performed by the function fails due to any reason, the future completes with an error.

  // You can create a future in dart by using Future class.
  // You can also create a future by using Future.value() method.
  // You can use future in dart by using then() method.

  print('--------------------- Program Init ----------------');
  httpGet('http://alirafael.com').then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });
  print('--------------------- Program End ----------------');
}

Future<String> httpGet(String url, {int timeOut = 1}) {
  print(timeOut);
  if (timeOut >= 3)  {
    throw 'HTTP Error on petition';
  }
  return Future.delayed(const Duration(seconds: 2), () {
    return 'HTTP Response from $url';
  });
}
