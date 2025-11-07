// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Quarta extends StatelessWidget {
  const Quarta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Quarta Tela'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/quinta');
          },
          child: const Text('Ir para a quinta tela'),
        ),
      ),
    );
  }
}
