import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio8_Tarefa.dart';

class Exercicio8 extends StatefulWidget {
  const Exercicio8({super.key});

  @override
  State<Exercicio8> createState() => _Exercicio8State();
}

class _Exercicio8State extends State<Exercicio8> {

  TextEditingController tarefaController = TextEditingController();
  List<Tarefa> tarefas = [];
  TextStyle? trStyle = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 8'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tarefa"
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Insira uma tarefa para ver ela na lista";
                        }
                      },
                      controller: tarefaController,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        tarefas.add(Tarefa(tarefa: tarefaController.text, feito: false));
                        tarefaController.clear();
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tarefas.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(tarefas[index].tarefa, style: trStyle,),
                          trailing: Checkbox(
                              value: tarefas[index].feito,
                              onChanged: (prChecked) {
                                setState(() {
                                  tarefas[index].feito = (prChecked ?? false);
                                  if (tarefas[index].feito) {
                                    trStyle = TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    );
                                  } else {
                                    trStyle = null;
                                  }
                                });
                              }
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
