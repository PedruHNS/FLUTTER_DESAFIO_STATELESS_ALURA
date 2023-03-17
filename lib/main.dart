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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 400,
                height: 250,
                color: Colors.blue,
                child: const Catalogo(
                    icone: Icon(Icons.add_circle_outline_outlined),
                    cor1: Colors.yellow,
                    cor2: Colors.brown,
                    cor3: Colors.redAccent,
                    cor4: Colors.purple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 400,
                height: 250,
                color: Colors.yellow,
                child: const Catalogo(
                    icone: Icon(Icons.account_circle_sharp),
                    cor1: Colors.blue,
                    cor2: Colors.orange,
                    cor3: Colors.redAccent,
                    cor4: Colors.purple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 400,
                height: 250,
                color: Colors.brown,
                child: const Catalogo(
                    icone: Icon(Icons.ac_unit_rounded),
                    cor1: Colors.pink,
                    cor2: Color.fromARGB(255, 159, 163, 70),
                    cor3: Colors.redAccent,
                    cor4: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color cor;
  final Icon? icone;
  const Card({this.icone, required this.cor, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 140,
        height: 200,
        decoration: BoxDecoration(
            color: cor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(2, 0))
            ]),
        child: icone,
      ),
    );
  }
}

class Catalogo extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final Color cor4;
  final Icon? icone;

  const Catalogo(
      {this.icone,
      required this.cor1,
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
          Card(icone: null, cor: cor1),
          Card(icone: icone, cor: cor2),
          Card(icone: icone, cor: cor3),
          Card(icone: null, cor: cor4),
        ],
      ),
    );
  }
}
