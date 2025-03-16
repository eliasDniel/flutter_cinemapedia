import 'package:app_cine_2/infrastructure/datasources/movie_db_datasources.dart';
import 'package:app_cine_2/infrastructure/repositories/moviedb_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




// Este repositorio es inmutable 
final movieRepositoryProvider = Provider(
  (ref) {
    return MoviedbRepositoryImpl(MovieDbDatasources());
  },
);
