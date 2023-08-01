import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio12_Pessoa.dart';

class Deletar extends StatelessWidget {
  final Pessoa pessoa;
  const Deletar({required this.pessoa ,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_mark,
              color: Colors.grey,
            ),
            SizedBox(height: 50),
            Text(
              "Deseja realmente excluir ${pessoa.nome}?",
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text("Sim")),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("Não"))
          ],
        ),
      ),
    );
  }
}
