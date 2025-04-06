import 'package:app_cine_2/presentation/providers/movies/movies_providers.dart';
import 'package:app_cine_2/presentation/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/movies/movie_show_provider.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeView());
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  ConsumerState<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingRepositoryPovider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    // final movies = ref.watch(nowPlayingRepositoryPovider);
    final movies = ref.watch(movieSlideShowProvider);
    if (movies.isEmpty) {
      return const Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 5,
        ),
        Text('Cargando peliculas...')
      ]));
    }
    return Column(
      children: [
        const CustomAppbar(),
        MoviesSlideShow(movies: movies)
      ],
    );
  }
}
