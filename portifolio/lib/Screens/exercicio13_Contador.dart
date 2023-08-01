import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  int contador;

  Contador({required this.contador});

  @override
  Widget build(BuildContext context) {
    if (contador >= 0) {
      return Text("${contador}", style: TextStyle (
        color: Colors.green,
        fontSize: 40,
      ));
    } else {
      return Text("${contador}", style: TextStyle (
        color: Colors.red,
        fontSize: 40,
      ));
    }
  }
}

