import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  get textmain => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            //DrawerHeader(
            // ignore: prefer_const_constructors
            //decoration: BoxDecoration(color: HexColor("#13222C"),
            //image: const NetworkImage("https://s2.static.brasilescola.uol.com.br/be/2021/03/nova-iorque.jpg")),
            // child: const Text("Galeria",
            //    style: TextStyle(color: Colors.white, fontSize: 20)),

            //),
            // ignore: prefer_const_constructors
            DrawerHeader(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(animatedTexts: [
                      FlickerAnimatedText('EXPLORANDO NOVOS ARES'),
                      RotateAnimatedText('BRISA LEVE'),
                      RotateAnimatedText('E PASSAGEIRA'),
                    ]),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/images/sp/ilhabela.jpg"),
                      fit: BoxFit.cover)),
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'Inicio',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                subtitle: const Text("voltar"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'São Paulo',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.crop_original),
                onTap: () {
                  Navigator.pushNamed(context, '/segunda');
                },
                subtitle: const Text("Fotos"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'Rio de Janeiro',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.crop_original),
                onTap: () {
                  Navigator.pushNamed(context, '/terceira');
                },
                subtitle: const Text("Fotos"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'Fortaleza',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.crop_original),
                onTap: () {
                  Navigator.pushNamed(context, '/quarta');
                },
                subtitle: const Text("Fotos"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'Maranhão',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.crop_original),
                onTap: () {
                  Navigator.pushNamed(context, '/quinta');
                },
                subtitle: const Text("Fotos"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                title: const Text(
                  'Bahia',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                leading: const Icon(Icons.crop_original),
                onTap: () {
                  Navigator.pushNamed(context, '/sexta');
                },
                subtitle: const Text("Fotos"),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor("#13222C"),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              child: TextLiquidFill(
                text: 'VIAGENS',
                waveColor: HexColor("#0047AB"),
                boxBackgroundColor: HexColor("#13222C"),
                textStyle: const TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/img0.jpg",
                height: 535,
                width: 370,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Você só vive uma vez'),
                    WavyAnimatedText(' Mas se você souber viver direitinho ,'),
                    WavyAnimatedText('uma vez é o suficiente.'),
                  ],
                  isRepeatingAnimation: true,
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: HexColor("#13222C"),
    );
  }
}
