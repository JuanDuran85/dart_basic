import 'dart:io';

void printMessage({dynamic message = ''}) {
  stdout.writeln(message);
}

void processUser(int i, double salarioIn) {
  printMessage(message: '=========== Usuario $i =============');

  printMessage(message: '¿Cúal es su nombre?');
  String? nombre = stdin.readLineSync() ?? '';

  printMessage(message: '¿Qué edad tienes?');
  String? edad = stdin.readLineSync() ?? '';

  printMessage(message: '¿En qué país naciste?');
  String? pais = stdin.readLineSync() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  printMessage(message: 'Usuario $i sin deducciones');
  printMessage(message: usuario);

  double salario = salarioIn;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  printMessage(message: usuario);
}

main() {
  List<double> salarios = [1000, 2000];
  for (int i = 1; i <= salarios.length; i++) {
    processUser(i, salarios[i - 1]);
  }
}
