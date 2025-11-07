// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Segunda extends StatelessWidget {
  const Segunda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Segunda Tela'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/terceira');
          },
          child: const Text('Ir para a terceira tela'),
        ),
      ),
    );
  }
}
