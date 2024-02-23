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

  Future<String> timeoutExample = Future.delayed( Duration(seconds: 3), () {
    print('Timeout example 3 seconds');
    return 'Timeout example 3 seconds return value';
  });
  
  timeoutExample.then(print);

  print('End main function');
}