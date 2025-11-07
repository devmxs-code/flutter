import 'package:flutter/material.dart';
import 'cidades.dart';
import 'home.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/segunda': (context) => const FirstScreen(),
      '/terceira': (context) => const SecondScreen(),
      '/quarta': (context) => const ThirdScreen(),
      '/quinta': (context) => const FourthScreen(),
      '/sexta': (context) => const FifthScreen(),
    },
  ));
}
