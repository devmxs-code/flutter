import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:photo_view/photo_view.dart';

Widget sp = Column(
  children: [
    Row(
      children: [
        Image.asset(
          "assets/images/sp/aguasdelindoia.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Aguas de Lindoia',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
    const Divider(),
    Row(
      children: [
        Image.asset(
          "assets/images/sp/botucatu.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Botucatu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
    const Divider(),
    Row(
      children: [
        Image.asset(
          "assets/images/sp/campos.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Campos do Jordão',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
    const Divider(),
    Row(
      children: [
        Image.asset(
          "assets/images/sp/holambra.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Holambra',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
    const Divider(),
    Row(
      children: [
        Image.asset(
          "assets/images/sp/ilhabela.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Ilhabela',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    )
  ],
);
