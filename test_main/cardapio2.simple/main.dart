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
  appBar: AppBar(title: Text('Cardapio Digital')),
  body: CustomScrollView(
    slivers: [
      SliverFillRemaining(
        hasScrollBody: true,
        child: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(size: 200),
              Text('Vila Salga', 
              style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              ),
              textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
        delegate: SliverChildListDelegate(const [
          
          ListTile(
            
            //icone com comeco
            leading: CircleAvatar(
            
            //texto do icone
            child: Text('1'),),
            
            //titulo
              title: Text('João'),
              
              //subtitulo
              subtitle: Text('subtitle of tile 2'),
              
              //icone no final
              //trailing: Icon(Icons.face),
            ),
             const Divider(
              //cor
              color: Colors.blue,
              
              //seraracao
              height: 20,
              
              //grossura
              thickness: 2,
              
              //comprimento do comeco
              indent: 00,
             
              //comprimento do final
              endIndent: 00),


          ListTile(
            leading: CircleAvatar(
            child: Text('2'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
        ListTile(
            leading: CircleAvatar(
            child: Text('3'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
        ListTile(
            leading: CircleAvatar(
            child: Text('4'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),

         ListTile(
            leading: CircleAvatar(
            child: Text('5'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
        ListTile(
            leading: CircleAvatar(
            child: Text('6'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),

          ListTile(
            leading: CircleAvatar(
            child: Text('7'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
          ListTile(
            leading: CircleAvatar(
            child: Text('8'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
          ListTile(
            leading: CircleAvatar(
            child: Text('9'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),

          ListTile(
            leading: CircleAvatar(
            child: Text('10'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
        ListTile(
            leading: CircleAvatar(
            child: Text('11'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
          ListTile(
            leading: CircleAvatar(
            child: Text('12'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),
          
        ListTile(
            leading: CircleAvatar(
            child: Text('13'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
                const Divider(
                  color: Colors.blue,
                  height: 20,
                  thickness: 2,
                  indent: 00,
                  endIndent: 00),

          ListTile(
            leading: CircleAvatar(
            child: Text('14'),
            ),
              title: Text('Marcelo'),
              subtitle: Text('subtitle of tile 2'),),
            ]),
          ),
        ],),
      ),
    );
  }
}