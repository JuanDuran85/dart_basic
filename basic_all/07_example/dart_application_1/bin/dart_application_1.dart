import 'package:http/http.dart' as http;

import 'package:dart_application_1/class/response_api.dart';

void main(List<String> arguments) async {
  // final url = Uri.http('reqres.in', '/api/users?page=2');
  // final url2 = Uri.https('reqres.in', '/api/users?page=2');
  // final url3 = Uri.parse('https://reqres.in/api/users?page=2');

  // final result = await http.get(url2);
  // print(result.statusCode);
  // print(result.body);

  // final mapResultBody = jsonDecode(result.body);
  // print(mapResultBody);
  // print('Page: ${mapResultBody['page']}');
  // print('Id: ${mapResultBody['data'][5]['id']}');

  final url = Uri.http('reqres.in', '/api/users?page=2');
  final respApi = await http.get(url);
  final responseFinal = requestResponseFromJson(respApi.body);
  print(responseFinal);
  print('page: ${responseFinal.page}');
  print('perPage: ${responseFinal.perPage}');
  print('total: ${responseFinal.total}');
  print('totalPages: ${responseFinal.totalPages}');
  print('id: ${responseFinal.data?[2].id}');
  print('firstName: ${responseFinal.data![4].firstName}');
}
