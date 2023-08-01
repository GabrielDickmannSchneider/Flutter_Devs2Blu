import 'package:flutter/material.dart';

class Exercicio9_2 extends StatefulWidget {
  const Exercicio9_2({super.key});

  @override
  State<Exercicio9_2> createState() => _Exercicio9_2State();
}

class _Exercicio9_2State extends State<Exercicio9_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Exercício 9 - Tela Dois'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Está é a segunda página!!"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
