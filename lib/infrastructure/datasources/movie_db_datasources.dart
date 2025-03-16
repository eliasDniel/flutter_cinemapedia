import 'package:app_cine_2/config/constants/enviroments.dart';
import 'package:app_cine_2/domain/datasources/movies_datasources.dart';
import 'package:app_cine_2/domain/entities/movie.dart';
import 'package:app_cine_2/infrastructure/mappers/movie_mapper.dart';
import 'package:app_cine_2/infrastructure/models/movieDb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDbDatasources extends MoviesDatasources {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Enviroments.movieDBKey,
        'language': 'es-MX'
      }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final movieDbResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDbResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster',)
        .map((moviedb) => MovieMapper.moviedbToEntity(moviedb),)
        .toList();
    return movies;
  }
}
