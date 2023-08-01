import 'package:flutter/material.dart';
import 'package:portifolio/Models/ProductModel.dart';

class Exercicio11_cadastro extends StatefulWidget {
  const Exercicio11_cadastro({super.key});

  @override
  State<Exercicio11_cadastro> createState() => _Exercicio11_cadastroState();
}

class _Exercicio11_cadastroState extends State<Exercicio11_cadastro> {
  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline_sharp, color: Colors.green, size: 100),
            Text('Muito obrigado por se cadastrar em nosso sistema ${productModel.nome}'),
            Text('Um e-mail de cadastro foi enviado para ${productModel.email}'),
          ],
        ),
      ),
    );
  }
}


