// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Terceira extends StatelessWidget {
  const Terceira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Terceira Tela'),
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/quarta');
          },
          child: const Text('Ir para a quarta tela'),
        ),
      ),
    );
  }
}
