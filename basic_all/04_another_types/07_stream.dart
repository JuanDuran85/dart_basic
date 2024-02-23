import 'dart:async';

void main(List<String> args) {
  // ---------- stream

  /**
   * A stream is a sequence of asynchronous events. It is like an asynchronous Iterable—where, instead of getting the next event when you ask for it, the stream tells you that there is an event when it is ready.
   */

// one subscriber. Only one suscriber can listen to the stream. But, using broadcast, you can have many subscribers.
 final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('receive data: $data'),
      onError: (error) => print('Error: $error'),
      onDone: () => print('End stream'),
      cancelOnError: false);

    streamController.stream.listen((data) => print('receive data S2: $data'),
      onError: (error) => print('Error S2: $error'),
      onDone: () => print('End stream S2'),
      cancelOnError: false);

  streamController.sink.add('Sending event 1');
  streamController.sink.add('Sending event 2');
  streamController.sink.add('Sending event 3');
  streamController.sink.addError('Sending error');
  streamController.sink.add('Sending event 4');
  streamController.sink.add('Sending event 5');

  streamController.sink.close();
  
  print('End main function');
}
