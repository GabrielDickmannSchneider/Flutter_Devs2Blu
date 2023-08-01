import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio13_Contador.dart';

class Exercicio13 extends StatefulWidget {
  const Exercicio13({super.key});

  @override
  State<Exercicio13> createState() => _Exercicio13State();
}

class _Exercicio13State extends State<Exercicio13> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 13'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Contador(contador: contador),
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      contador++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      contador--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
