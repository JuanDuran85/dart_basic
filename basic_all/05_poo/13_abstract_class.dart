import 'classes/energy_class.dart';

void main(List<String> args) {
  final WindPlant windPlant = new WindPlant(initialEnergy: 400);
  print(windPlant.energyLeft);
  windPlant.consumeEnergy(200);
  print(windPlant.energyLeft);
  print(windPlant.type);
  print('Wind: ${chargePhone(windPlant)}');

  print('------------------------------------');

  final NuclearPlant nuclearPlant = new NuclearPlant(energyLeft: 5000);
  print(nuclearPlant.energyLeft);
  nuclearPlant.consumeEnergy(3500);
  print(nuclearPlant.energyLeft);
  print(nuclearPlant.type);
  print('Nuclear Plant: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 40) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 40;
}