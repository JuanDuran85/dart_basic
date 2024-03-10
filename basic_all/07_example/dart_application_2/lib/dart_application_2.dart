import 'package:dart_application_2/class/request_response.dart';
import 'package:http/http.dart' as http;

void getCountryInfo() async {
  final url = Uri.parse('https://restcountries.com/v3.1/name/colombia');

  final responseApi = await http.get(url);
  final result = requestResponseFromJson(responseApi.body);
  print('===========================');
  for (var info in result) {
    print('Pais: ${info.name?.common}');
    print('Poblacion: ${info.population}');
    print('Fronteras: ');
    for (var borders in info.borders!) {
      String indivualBorder = borders.toLowerCase();
      print(
          '  ${indivualBorder.replaceAll(indivualBorder[0], indivualBorder[0].toUpperCase())}');
    }
    print('Languages: ${info.languages?.spa}');
    print('Latitud: ${info.latlng?[0]}');
    print('Longitud: ${info.latlng?[1]}');
    print('Moneda: ${info.currencies?.cop?.name}');
    print('Bandera: ${info.flags?.svg}');
  }
  print('===========================');
}
