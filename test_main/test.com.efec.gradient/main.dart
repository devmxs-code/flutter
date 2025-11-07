import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Multicolor',
          style: TextStyle(height: 0, fontSize: 20),
          ),
          leading: GestureDetector(
          onTap: () {},
          child: Icon(
          Icons.account_box,
            ),
          ),  
        ),
        body: Center(
          child: Container(
                height: 750,
                width: 400,
                decoration: BoxDecoration(
                
              //    GRADIENTE LINEAR COM IMAGEM
                //backgroundBlendMode: BlendMode.exclusion,
                //gradient: LinearGradient(
                //colors: const [
                //Colors.white,
                //Colors.black87,
                //],
                //),
                //),
                // IMAGEM 
                //child: Image.network(
                //'https://poster.keepcalmandposters.com/4004846.jpg',
                


                //     EFEITO GRADIENTE MULTICORES
                gradient: SweepGradient(
                colors: const [
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.red,
                Colors.blue,
                ],
                stops: const [0.0, 0.25, 0.5, 0.75, 1.0],
                ),
                

                //   EFEITO GRADIENTE
                //gradient: LinearGradient(
                //colors: const [
                //Colors.black,
                //Colors.white10,
                ///Colors.red,
                //],
                //),

                //   EFEITO GRADIENTE CENTRAL
                //gradient: RadialGradient(
                //colors: const [Colors.blue, Colors.black54,],
                //stops: const [0.8, 9.0,],
                //),
                
                //   COR DO QUADRADO
                //color: Colors.blue[900],

                //   BORDA
                //border: Border.all(color: Colors.black, width: 3),
                
                //   CURVA DA BORDA
                //borderRadius: BorderRadius.all(Radius.circular(30)),

                //   SOMBRA DA BORDA 
                //boxShadow: const [
                //BoxShadow(blurRadius: 10),
                //],


          
          ),
        ),
      ),
     ),
    );
  }
}