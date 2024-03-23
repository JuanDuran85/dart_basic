enum PlantType { wind, solar, geothermal, hydro, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount) {
    throw UnimplementedError();
  }
}

// extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
    print('Consuming $amount of wind energy');
  }
}

/* 
 Difference Between Extends & Implements

 extends:
    Used to inherit a class in another class. 	
    Gives complete method definition to sub-class.
    Only one class can be extended.
    It is optional to override the methods.
    Constructors of the superclass is called before the sub-class constructor. 	
    The super keyword is used to access the members of the superclass. 	
    Sub-class need not to override the fields of the superclass. 	

Implements:
    Used to inherit a class as an interface in another class.
    Gives abstract method definition to sub-class.
    Multiple classes can be implemented.
    Concrete class must override the methods of an interface.
    Constructors of the superclass is not called before the sub-class constructor.
    Interface members can’t be accessed using the super keyword.
    Subclass must override the fields of the interface.
*/

// using implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({
    required this.energyLeft,
  });

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
