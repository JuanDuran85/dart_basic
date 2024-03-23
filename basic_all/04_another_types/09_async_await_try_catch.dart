void main(List<String> args) async {
  print('------------------- Program start -------------------');

  try {
    final value = await httpGetOk('https://alirafael.com');
    print("Result: $value");

    final value2 = await httpGetError('https://alirafael.com');
    print("Result: $value2");
  } on Exception catch (e) {
    print('Exception: $e');
  } catch (error) {
    print('Error: $error');
  } finally {
    print('Finally');
  }

  print('------------------- Program end -------------------');
}

Future<String> httpGetOk(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Ok response from $url';
}

Future httpGetError(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw Exception('Error on http request to $url');
}
