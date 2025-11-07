import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:viagens/models/bahia.dart';
import 'package:viagens/models/saopaulo.dart';
import 'package:viagens/models/riodejaneiro.dart';
import 'package:viagens/models/maranhao.dart';
import 'package:viagens/models/fortaleza.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#13222C"),
        centerTitle: true,
        title: const Text('São Paulo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: sp,
          ),
          const Divider()
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#13222C"),
        centerTitle: true,
        title: const Text('Rio de Janeiro'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: rj,
          ),
          const Divider()
        ],
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#13222C"),
        centerTitle: true,
        title: const Text('Fortaleza'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: fr,
          ),
          const Divider()
        ],
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#13222C"),
        centerTitle: true,
        title: const Text('Maranhão'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: mr,
          ),
          const Divider()
        ],
      ),
    );
  }
}

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#13222C"),
        centerTitle: true,
        title: const Text('Bahia'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: b,
          ),
          const Divider()
        ],
      ),
    );
  }
}
