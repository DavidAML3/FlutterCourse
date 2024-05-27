void main() {

  final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  print(ironman.toString());

  final Map<String, dynamic> rawJson = {
    'name': 'Bruce Banner',
    'Power': 'Mutant',
    'isAlive': true
  };
  final hulk = Hero.fromJson(rawJson);
  print(hulk.toString());
}

class Hero {
  
  String name;
  String power;
  bool isAlive;

  Hero({ required this.name, required this.power, required this.isAlive });

  Hero.fromJson(Map<String, dynamic> json) 
  : name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power ${ isAlive ? 'And is Alive' : 'And is Dead' }';
  }
}