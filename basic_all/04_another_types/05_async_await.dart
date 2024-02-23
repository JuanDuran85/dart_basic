import 'dart:io';

/* 
Key terms

    async: You can use the async keyword before a function's body to mark it as asynchronous.
    async function: An async function is a function labeled with the async keyword.
    await: You can use the await keyword to get the completed result of an asynchronous expression. The await keyword only works within an async function.
*/

void main(List<String> args) async {
  // ---------- async and await
  String pathFile = Directory.current.path +
      '\\basic_all\\04_another_types\\assets\\person.txt';

  readFile(pathFile).then(print);

  String resultText = await readFileAsyncAwait(pathFile);

  print(resultText);
  print('End main function');
}

Future<String> readFile(String path) {
  File readFile = new File(path);
  return readFile.readAsString();
}

Future<String> readFileAsyncAwait(String path)  async {
  File readFile = new File(path);
  return readFile.readAsString();
}
