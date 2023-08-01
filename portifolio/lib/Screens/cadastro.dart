import 'package:flutter/material.dart';
import 'package:portifolio/Models/user.dart';
import 'dart:async';
import 'package:portifolio/Screens/home.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  void initState() {
    super.initState();
    // Configurando um Timer para aguardar por 3 segundos antes de navegar para a tela inicial (HomeScreen)
    Timer(Duration(seconds: 1), () {
      // Navegando para a tela inicial após o tempo definido (3 segundos)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Recupere o argumento passado para esta rota
    final User usuario = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline, size: 100, color: Colors.green),
            Text('Bem-vindo(a) ao cadastro, ${usuario.nome}!'),
          ],
        ),
      ),
    );
  }
}

