class Vehicle {
  bool switchedOn = false;

  void startUp() {
    switchedOn = true;
    print('Starting up vehicle...');
  }

  void stopUp() {
    switchedOn = false;
    print('Stopping vehicle...');
  }
}

class Car extends Vehicle {
  int miles = 0;
}