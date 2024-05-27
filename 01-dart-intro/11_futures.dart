void main() {

  print('Starting Programm');
  get('https://Google.com')
  .then((value) => print(value))
  .catchError((error) {
    print('Error: $error');
  });
  print('Ending Programm');
}

Future<String> get(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Get petition failure';
    // return 'Get petition response';
  });
}