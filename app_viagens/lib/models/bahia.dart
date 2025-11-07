import 'package:flutter/material.dart';

Widget b = Column(
  children: [
    Row(
      children: [
        Image.asset(
          "assets/images/b/itacare.jpg",
          height: 150,
          width: 280,
        ),
        const Text(
          'Itacare',
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
          "assets/images/b/marau.jpg",
          height: 150,
          width: 280,
        ),
        const Text(
          'Marau',
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
          "assets/images/b/salvador.png",
          height: 150,
          width: 280,
        ),
        const Text(
          'Salvador',
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
          "assets/images/b/trancoso.jpg",
          height: 150,
          width: 280,
        ),
        const Text(
          'Trancoso',
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
