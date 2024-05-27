void main() async {

  print('Starting Programm');
  try {
    final value = await get('https://Google.com');
    print(value);
  } on Exception catch(error) {
    print('We have an $error');
  } catch(error) {
    print('We have an error: $error');
  } finally {
    print('End of the try and catch');
  }
  print('Ending Programm');
}

Future<String> get(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('We have a problem with the URL');
  // throw 'We got an error in your petition';
  // return 'We have a value for your petition.';
}