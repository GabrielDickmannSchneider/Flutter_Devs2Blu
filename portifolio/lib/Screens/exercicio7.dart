import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio7_Pessoa.dart';

class Exercicio7 extends StatefulWidget {
  const Exercicio7({super.key});

  @override
  State<Exercicio7> createState() => _Exercicio7State();
}

class _Exercicio7State extends State<Exercicio7> {

  var formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  List<Pessoa> convidados = [];

  void update(int index) {
    String nomeConvidado = convidados[index].nome;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Editar nome'),
          content: TextFormField(
            initialValue:nomeConvidado,
            onChanged: (value) {
              setState(() {
                nomeConvidado = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  convidados[index].nome = nomeConvidado;
                });
                Navigator.pop(context);
              },
              child: Text("Salvar"),
            ),
          ],
        );
      },
    );
  }

  void deletar(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Excluir nome'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  convidados.remove(convidados[index]);
                });
                Navigator.pop(context);
              },
              child: Text("Deletar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 7'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Nome"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Insira um nome para ver ele na lista";
                        }
                      },
                      controller: nomeController,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          convidados.add(Pessoa(nome: nomeController.text));
                          nomeController.clear();
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: convidados.length,
                  itemBuilder: (context, index) {
                    final pessoa = convidados[index];
                    final urlImagem = pessoa.imagem;
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: convidados[index].imagem.image,
                          ),
                          trailing: Container(
                            width: 80,
                            child: Row(
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        update(index);
                                      });
                                    },
                                    icon: Icon(Icons.edit),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      deletar(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                          ),
                          title: Text(convidados[index].nome),
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
