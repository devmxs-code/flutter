import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Consistencia é a chave.'),
        centerTitle: false,
      ),
      body: Column(children: [
        HabitTile(),
        HabitTile(),
        HabitTile(),
        HabitTile(),
        HabitTile(),
        HabitTile(),
      ]),
    );
  }
}
