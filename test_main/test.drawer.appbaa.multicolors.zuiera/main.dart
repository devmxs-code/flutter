import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testando',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        title: Text('AppBar'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.blue, Colors.yellow, Colors.green, Colors.purple, Colors.pink]
                ) 
            ), 
           ), 
         ), 
          //leading: GestureDetector(
          //onTap: () {},
          //child: Icon(
          //Icons.account_box,
          //),
          
          drawer: 
          Drawer(
          child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: const [Colors.purple, Colors.blue, Colors.black, Colors.pink, Colors.orange, Colors.green, Colors.brown, Colors.grey, ],
              ),
            ),
                child: Container(
                  child: Text('Drawer', textAlign: TextAlign.center,
          style: TextStyle(color: Colors.yellow, fontSize: 15)         
          )
                 ),
               ),
                ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 1',
                  style: TextStyle(color: Colors.blue),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.grey),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.red,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                    title: Text('Menu 2',
                  style: TextStyle(color: Colors.orange),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.green),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.brown,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                title: Text('Menu 3',
                  style: TextStyle(color: Colors.red),),
                subtitle: Text('Subtitulo',
                  style: TextStyle(color: Colors.purple),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.blue,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 4',
                  style: TextStyle(color: Colors.yellow),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.brown),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 5',
                  style: TextStyle(color: Colors.brown),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.pink),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.grey,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 6',
                  style: TextStyle(color: Colors.purple),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.orange),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.yellow,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 7',
                  style: TextStyle(color: Colors.green),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.blue),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.orange,
                ),
              ),
              Divider(),
              ListTile(
                  //efeito de toque
                  //onTap: () {},
                  onLongPress: () {},                 
                 title: Text('Menu 8',
                  style: TextStyle(color: Colors.grey),),
                  subtitle: Text('Subtitulo',
                    style: TextStyle(color: Colors.yellow),
                    ),
                  leading: Icon(Icons.ac_unit,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        body:Center(
          child: Container(
          child: Text('Body', textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, height: 15, fontSize: 30)         
          ),
                height: 800,
                width: 640,
                decoration: BoxDecoration(
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
          ), 
        ),
       ),
      ),
    );
  }
}



