// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Quinta extends StatelessWidget {
  const Quinta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Quinta Tela'),
      ),
      backgroundColor: Colors.purple,
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
          primary: Colors.grey[800],
          ),
          onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
          },
          child: const Text('Voltar para a primeira tela'),
        ),
      ),
    );
  }
}
