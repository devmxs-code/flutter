// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Primeira extends StatelessWidget {
  const Primeira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Primeira Tela'),
      ),
      backgroundColor: Colors.blue[900],
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/segunda');
          },
          child: const Text('Ir para a segunda tela'),
        ),
      ),
    );
  }
}
