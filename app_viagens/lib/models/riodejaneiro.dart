import 'package:flutter/material.dart';

Widget rj = Column(
  children: [
    Row(
      children: [
        Image.asset(
          "assets/images/rj/arraia.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Arraia',
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
          "assets/images/rj/cabofrio.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Cabo Frio',
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
          "assets/images/rj/paraty.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Paraty',
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
          "assets/images/rj/petropolis.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Petropolis',
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
