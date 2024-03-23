import 'classes/energy_class.dart';

void main(List<String> args) {
  final WindPlant windPlant = new WindPlant(initialEnergy: 400);
  print(windPlant.energyLeft);
  windPlant.consumeEnergy(200);
  print(windPlant.energyLeft);
  print(windPlant.type);

  print('Wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 40) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 40;
}