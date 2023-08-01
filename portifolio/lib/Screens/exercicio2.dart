import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 2'),
      ),
      body: Column(
        children: [
          Text('Texto 1'),
          Padding(
            padding: EdgeInsets.symmetric( vertical: 5.0),
            child: Text('Texto 2'),
          ),
          Text('Texto 3'),
        ],
      ),
    );
  }
}
