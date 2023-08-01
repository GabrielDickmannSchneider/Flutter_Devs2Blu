import 'package:flutter/material.dart';
import 'package:portifolio/Models/user.dart';
import 'package:portifolio/widgets/userControllerWidget.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 100),
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O nome é obrigatório";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      UserWidget.of(context)!.usuario = User(nome: nomeController.text);

                      Navigator.of(context).pushNamed("/cadastro", arguments: User(nome: nomeController.text));
                    }
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
