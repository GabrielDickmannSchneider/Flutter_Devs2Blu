import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio12_Pessoa.dart';

class Editar extends StatelessWidget {
  final Pessoa pessoa;
  const Editar({required this.pessoa, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nomeInputController = TextEditingController(text: pessoa.nome);

    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Pessoa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_mark,
              color: Colors.grey,
            ),
            SizedBox(height: 50),
            TextFormField(
              controller: _nomeInputController,
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Fecha a tela sem retornar valor
                  },
                  child: Text("Cancelar"),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(_nomeInputController.text); // Retorna o novo nome
                  },
                  child: Text("Salvar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
