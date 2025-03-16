import 'package:app_cine_2/domain/entities/movie.dart';
import 'package:app_cine_2/domain/repositories/movies_repository.dart';

import '../../domain/datasources/movies_datasources.dart';

class MoviedbRepositoryImpl extends MoviesRepository {
  final MoviesDatasources moviesDatasources;

  MoviedbRepositoryImpl(this.moviesDatasources);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return moviesDatasources.getNowPlaying(page: page);
  }
}
