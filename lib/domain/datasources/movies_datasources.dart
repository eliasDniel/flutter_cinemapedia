import 'package:app_cine_2/domain/entities/movie.dart';

abstract class MoviesDatasources {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
