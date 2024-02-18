import 'dart:collection';

void main(List<String> args) {
  // ---------- Queue

  Queue<int> queueAll = new Queue<int>();
  queueAll.addAll([1,2,3,4,5]);
  print(queueAll);

  Iterator<int> i = queueAll.iterator;
  while (i.moveNext()) {
    print(i.current);
  }
}