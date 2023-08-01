import 'package:flutter/material.dart';
import 'package:portifolio/Models/user.dart';
import 'package:portifolio/Screens/exercicio1.dart';
import 'package:portifolio/Screens/exercicio10.dart';
import 'package:portifolio/Screens/exercicio11.dart';
import 'package:portifolio/Screens/exercicio12.dart';
import 'package:portifolio/Screens/exercicio13.dart';
import 'package:portifolio/Screens/exercicio14.dart';
import 'package:portifolio/Screens/exercicio2.dart';
import 'package:portifolio/Screens/exercicio3.dart';
import 'package:portifolio/Screens/exercicio4.dart';
import 'package:portifolio/Screens/exercicio5.dart';
import 'package:portifolio/Screens/exercicio6.dart';
import 'package:portifolio/Screens/exercicio7.dart';
import 'package:portifolio/Screens/exercicio8.dart';
import 'package:portifolio/Screens/exercicio9.dart';
import 'package:portifolio/widgets/userControllerWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final User usuario = UserWidget.of(context)!.usuario; //ModalRoute.of(context)?.settings.arguments as User?;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home - Portfólio"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('${usuario?.nome ?? ""}'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                // Verifica se o usuário existe e tem um nome não vazio antes de exibir a primeira letra
                child: Text(
                  usuario.nome.isNotEmpty ? usuario.nome[0] : "",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ExpansionTile(
              title: Text('Exercícios'),
              subtitle: Text('Todos os exercícios que eu fiz no +Devs2Blu'),
              children: <Widget>[
                ListTile(title: Text('Exercício 1'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio1()));
                }),
                ListTile(title: Text('Exercício 2'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio2()));
                }),
                ListTile(title: Text('Exercício 3'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio3()));
                }),
                ListTile(title: Text('Exercício 4'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio4()));
                }),
                ListTile(title: Text('Exercício 5'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio5()));
                }),
                ListTile(title: Text('Exercício 6'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio6()));
                }),
                ListTile(title: Text('Exercício 7'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio7()));
                }),
                ListTile(title: Text('Exercício 8'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio8()));
                }),
                ListTile(title: Text('Exercício 9'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio9()));
                }),
                ListTile(title: Text('Exercício 10'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio10(pageNumber: 1)));
                }),
                ListTile(title: Text('Exercício 11'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio11()));
                }),
                ListTile(title: Text('Exercício 12'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio12()));
                }),
                ListTile(title: Text('Exercício 13'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio13()));
                }),
                ListTile(title: Text('Exercício 14'),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio14()));
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
