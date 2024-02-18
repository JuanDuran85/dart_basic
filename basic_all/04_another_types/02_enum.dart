void main(List<String> args) {
  // ---------- enum

  Audio volume = Audio.medio;
  print(volume);

  switch (volume) {
    case Audio.bajo:
      print('bajo');
      break;
    case Audio.medio:
      print('medio');
      break;
    case Audio.alto:
      print('alto');
      break;
  }



}

enum Audio {
  bajo,
  medio,
  alto
}