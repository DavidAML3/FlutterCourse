void main() {
  final wolverine = new Hero(name: 'Logan', power: 'Regen', isAlive: false);
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);

  final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  print(ironman.toString());
}

class Hero {
  
  String name;
  String power;
  bool isAlive;

  // Hero( String name, String power) : name = name, power = power;

  // Hero( this.name, this.power );

  Hero({ required this.name, this.power = 'Without power', required this.isAlive });

  @override
  String toString() {
    return '$name, $power ${ isAlive ? 'And is Alive' : 'And is Dead' }';
  }
}