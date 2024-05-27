void main() async {

  print('Starting Programm');
  try {
    final value = await get('https://Google.com');
    print(value);
  } catch(error) {
    print('We have a error: $error');
  }
  print('Ending Programm');
}

Future<String> get(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  throw 'We got an error in your petition';
  // return 'We have a value for your petition.';
}