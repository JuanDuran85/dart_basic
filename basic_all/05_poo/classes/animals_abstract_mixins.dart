abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Fish extends Animal {}

abstract class Bird extends Animal {}

mixin class Flaying {
  void fly() => print('I can fly!');
}

mixin class Walker {
  void walk() => print('I can walk!');
}

mixin class Swimmer {
  void swin() => print('I can swim!');
}


/* 
  Mixins

    Mixins are a way of reusing the code in multiple classes. Mixins are declared using the keyword mixin followed by the mixin name. Three keywords are used while working with mixins: mixin, with, and on. It is possible to use multiple mixins in a class.
    
    The with keyword is used to apply the mixin to the class. It promotes DRY(Don’t Repeat Yourself) principle.

  Rules For Mixin

    Mixin can’t be instantiated. You can’t create object of mixin.
    Use the mixin to share the code between multiple classes.
    Mixin has no constructor and cannot be extended.
    It is possible to use multiple mixins in a class.
*/

class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Flaying, Walker {}
class Cat extends Mammal with Walker {}
class Dove extends Bird with Flaying, Walker {}
class Duck extends Bird with Flaying, Walker, Swimmer {}
class Shark extends Fish with Swimmer {}
class FlyingFish extends Fish with Swimmer, Flaying {}