abstract class Vehicle {
  bool switchedOn = false;

  void startUp() {
    switchedOn = true;
    print('Starting up vehicle...');
  }

  void stopUp() {
    switchedOn = false;
    print('Stopping vehicle...');
  }
  
  bool checkEngine();
}

class Car extends Vehicle {
  int miles = 0;
  
  @override
  bool checkEngine() {
    print('Checking engine...');
    return true;
  }
}
