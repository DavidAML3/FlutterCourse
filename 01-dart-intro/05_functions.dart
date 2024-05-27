void main () {

  print(greetEveryone());
  print('Sum: ${ addTwoNumbers(10, 20) }');
  print('Sum Arrow: ${ addTwoNumbersArrow(10, 20) }');
  print('Sum Optional: ${ addTwoNumbersOptional(10) }');
  print('Greet: ${ greetPerson(name: 'David') }');
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers( int a, int b) {
  return a + b;
}

int addTwoNumbersArrow( int a, int b) => a + b;

int addTwoNumbersOptional( int a, [ int b = 0 ]) {
  // b ??= 0;
  return a + b;
}

String greetPerson({ required String name, String message = 'Hola'}) {
  return '$message, $name';
}