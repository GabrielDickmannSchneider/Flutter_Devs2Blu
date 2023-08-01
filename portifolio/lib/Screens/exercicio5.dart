import 'package:flutter/material.dart';

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 5'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/arvore.gif"),
              ),
              Image(
                image: AssetImage("assets/papai-noel.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
