import 'package:app_cine_2/infrastructure/models/movieDb/movie_moviedb.dart';

import '../../domain/entities/movie.dart';

class MovieMapper {
  static Movie moviedbToEntity(MovieMovieDB movieMovieDb) => Movie(
      adult: movieMovieDb.adult,
      backdropPath: movieMovieDb.backdropPath != ''
      ?'https://image.tmdb.org/t/p/w500${movieMovieDb.backdropPath}'
      :'https://www.reelviews.net/resources/img/default_poster.jpg',
      genreIds: movieMovieDb.genreIds.map((e) => e.toString()).toList(),
      id: movieMovieDb.id,
      originalLanguage: movieMovieDb.originalLanguage,
      originalTitle: movieMovieDb.originalTitle,
      overview: movieMovieDb.overview,
      popularity: movieMovieDb.popularity,
      posterPath: movieMovieDb.posterPath != ''
      ?'https://image.tmdb.org/t/p/w500${movieMovieDb.posterPath}'
      :'no-poster',
      releaseDate: movieMovieDb.releaseDate,
      title: movieMovieDb.title,
      video: movieMovieDb.video,
      voteAverage: movieMovieDb.voteAverage,
      voteCount: movieMovieDb.voteCount
  );
}
