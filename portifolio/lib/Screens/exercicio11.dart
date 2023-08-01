import 'package:flutter/material.dart';
import 'package:portifolio/Models/ProductModel.dart';
import 'package:portifolio/Screens/exercicio11_cadastro.dart';

class Exercicio11 extends StatefulWidget {
  const Exercicio11({super.key});

  @override
  State<Exercicio11> createState() => _Exercicio11State();
}

class _Exercicio11State extends State<Exercicio11> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget buildTile(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.co_present_sharp, size: 100),
              Text('Bem vindo a nossa tela de cadastro de usuário'),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        controller: nomeController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nome"
                        ),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "O nome é obrigatório";
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "E-mail",
                        ),
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return "O e-mail é obrigatório";
                          }
                          return null; // Retorna null se o e-mail for válido
                        },
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        ProductModel product = ProductModel(nome: nomeController.text, email: emailController.text);
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed("/ex11_cad", arguments: product);
                        }
                      },
                      child: Text('Cadastrar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildTile(context);
  }
}
