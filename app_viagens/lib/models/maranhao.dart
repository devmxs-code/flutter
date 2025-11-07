import 'package:flutter/material.dart';

Widget mr = Column(
  children: [
    Row(
      children: [
        Image.asset(
          "assets/images/mr/atins.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Atins',
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
          "assets/images/mr/carolina.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Carolina',
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
          "assets/images/mr/raposa.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Raposa',
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
          "assets/images/mr/santoamaro.jpg",
          height: 150,
          width: 250,
        ),
        const Text(
          'Santo Amaro',
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
