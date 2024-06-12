import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movieDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'There is not an Api Key';
}