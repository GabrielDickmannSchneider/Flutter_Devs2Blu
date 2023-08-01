import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio9_telaDois.dart';

class Exercicio9 extends StatefulWidget {
  const Exercicio9({super.key});

  @override
  State<Exercicio9> createState() => _Exercicio9State();
}

class _Exercicio9State extends State<Exercicio9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Exercício 9'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Está é a primeira página!!"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio9_2()));
              },
              child: Text('Avançar'),
            ),
          ],
        ),
      ),
    );
  }
}
