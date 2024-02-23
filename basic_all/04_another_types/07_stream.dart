import 'dart:async';

void main(List<String> args) {
  // ---------- stream

  /**
   * A stream is a sequence of asynchronous events. It is like an asynchronous Iterable—where, instead of getting the next event when you ask for it, the stream tells you that there is an event when it is ready.
   */

  final streamController = StreamController();

  streamController.stream.listen((data) => print('receive data: $data'),
      onError: (error) => print(error),
      onDone: () => print('End stream'),
      cancelOnError: false);

  streamController.sink.add('Sending event 1');
  streamController.sink.add('Sending event 2');
  streamController.sink.add('Sending event 3');
  streamController.sink.addError('Sending error 1');
  streamController.sink.add('Sending event 4');
  streamController.sink.add('Sending event 5');

  streamController.sink.close();
  
  print('End main function');
}
