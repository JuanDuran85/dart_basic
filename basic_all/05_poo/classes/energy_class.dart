enum PlantType { wind, solar, geothermal, hydro, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount){
    throw UnimplementedError();
  }
}

// extends
class WindPlant extends EnergyPlant {

  WindPlant({required double initialEnergy}): super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
    print('Consuming $amount of wind energy');
  }
}