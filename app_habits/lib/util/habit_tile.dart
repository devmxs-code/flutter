import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // nome do habito
                  Text('Exercicios',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
                const SizedBox(
                  height: 10,
                  ,
                )
                 // processo
                   Text('2:00 / 10 = 20%',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                   ),
                ),                
               ],
              ),
             Icon(Icons.settings),
          ],
        )
      ),
    );
  }
}
