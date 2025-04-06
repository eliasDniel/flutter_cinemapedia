import 'package:app_cine_2/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'movies_providers.dart';

final movieSlideShowProvider = Provider<List<Movie>>(
  (ref) {
    final movies = ref.watch(nowPlayingRepositoryPovider);
    if (movies.isEmpty) return [];
    return movies.sublist(0, 8);
  },
);
