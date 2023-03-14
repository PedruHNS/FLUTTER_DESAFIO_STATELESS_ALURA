import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text("Desafio"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 400,
              height: 250,
              color: Colors.black,
              child: const Catalogo(
                  cor1: Colors.yellow,
                  cor2: Colors.brown,
                  cor3: Colors.redAccent,
                  cor4: Colors.purple),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 400,
              height: 250,
              color: Colors.yellow,
              child: const Catalogo(
                  cor1: Colors.blue,
                  cor2: Colors.orange,
                  cor3: Colors.redAccent,
                  cor4: Colors.purple),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 400,
              height: 250,
              color: Colors.brown,
              child: const Catalogo(
                  cor1: Colors.black,
                  cor2: Color.fromARGB(255, 159, 163, 70),
                  cor3: Colors.redAccent,
                  cor4: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color cor;
  const Card({required this.cor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 200,
      color: cor,
    );
  }
}

class Catalogo extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final Color cor4;

  const Catalogo(
      {required this.cor1,
      required this.cor2,
      required this.cor3,
      required this.cor4,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(cor: cor1),
          Card(cor: cor2),
          Card(cor: cor3),
          Card(cor: cor4),
        ],
      ),
    );
  }
}
