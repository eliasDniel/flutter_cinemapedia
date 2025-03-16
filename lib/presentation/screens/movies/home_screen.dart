import 'package:app_cine_2/config/constants/enviroments.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static const String name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Enviroments.movieDBKey),
      ),
    );
  }
}
