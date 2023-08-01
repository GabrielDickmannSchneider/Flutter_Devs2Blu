import 'package:flutter/material.dart';
import 'package:portifolio/Screens/exercicio12_Pessoa.dart';
import 'package:portifolio/Screens/exercicio12_deletar.dart';
import 'package:portifolio/Screens/exercicio12_editar.dart';

class Exercicio12 extends StatefulWidget {
  const Exercicio12({super.key});

  @override
  State<Exercicio12> createState() => _Exercicio12State();
}

class _Exercicio12State extends State<Exercicio12> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController _nomeInputController = TextEditingController();
  List<Pessoa> convidados = [];

  Future<bool?> _podeExcluir(Pessoa pessoa) async {
    var result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Deletar(pessoa: pessoa),
    ));

    if (!mounted) return null;

    return result;
  }

  Future<void> _podeAlterar(Pessoa pessoa, String novoNome) async {
    setState(() {
      pessoa.nome = novoNome;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 12'),
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
                        border: OutlineInputBorder(),
                        labelText: "Nome",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Insira um nome para vê-lo na lista";
                        }
                        return null; // Retorne uma String vazia quando o valor for válido
                      },
                      controller: nomeController,
                    ),
                    IconButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            convidados.add(Pessoa(nome: nomeController.text));
                            nomeController.clear();
                          });
                        }
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
                            backgroundImage: convidados[index].imagem,
                          ),
                          trailing: Container(
                            width: 80,
                            child: Row(
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => Editar(pessoa: convidados[index]),
                                      )).then((novoNome) {
                                        if (novoNome != null && novoNome.isNotEmpty) {
                                          _podeAlterar(convidados[index], novoNome);
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.edit),
                                  ),

                                ),
                                IconButton(
                                  onPressed: () {
                                    _podeExcluir(convidados[index]).then((value) {
                                      if (value == null)
                                        return;

                                      if (value) {
                                        setState(() {
                                          convidados.removeAt(index);
                                        });
                                      }
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
