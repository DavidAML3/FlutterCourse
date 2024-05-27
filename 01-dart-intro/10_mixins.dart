abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

mixin class Flying {
  void fly() => print('I believe i can fly!');
}

mixin class Walker {
  void walk() => print('Im walking on sunshine!');
}

mixin class Swimmer {
  void Swim() => print('Im swiming mom!');
}

class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Walker, Flying {}
class cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flying {}
class Duck extends Bird with Walker, Swimmer, Flying {}

class Shark extends Fish with Swimmer {}
class FlyingFish extends Fish with Swimmer, Flying {}

void main() {

  final flipper = Dolphin();
  flipper.Swim();

  final batman = Bat();
  batman.walk();
  batman.fly();

  final namor = Duck();
  namor.walk();
  namor.Swim();
  namor.fly();
}


