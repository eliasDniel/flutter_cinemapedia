import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroments {
  static String movieDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay api key';
}
