void main() {
  final mysquare = Square(side: 10);

  print('Area: ${ mysquare.calculateArea() }');
}

class Square {

  double _side;

  Square({ required double side }) 
  : assert(side >= 0, 'Side must be >= 0'),
    _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be > 0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}