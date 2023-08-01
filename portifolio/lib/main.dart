import 'package:flutter/material.dart';
import 'package:portifolio/Models/user.dart';
import 'package:portifolio/Screens/cadastro.dart';
import 'package:portifolio/Screens/exercicio11_cadastro.dart';
import 'package:portifolio/Screens/home.dart';
import 'package:portifolio/Screens/login.dart';
import 'package:portifolio/Screens/exercicio1.dart';
import 'package:portifolio/Screens/exercicio2.dart';
import 'package:portifolio/Screens/exercicio3.dart';
import 'package:portifolio/Screens/exercicio4.dart';
import 'package:portifolio/Screens/exercicio5.dart';
import 'package:portifolio/Screens/exercicio6.dart';
import 'package:portifolio/Screens/exercicio7.dart';
import 'package:portifolio/Screens/exercicio8.dart';
import 'package:portifolio/Screens/exercicio9.dart';
import 'package:portifolio/Screens/exercicio10.dart';
import 'package:portifolio/Screens/exercicio11.dart';
import 'package:portifolio/Screens/exercicio12.dart';
import 'package:portifolio/Screens/exercicio13.dart';
import 'package:portifolio/Screens/exercicio14.dart';
import 'package:portifolio/widgets/userControllerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserWidget(
      usuario: User(nome: ""),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => LogInScreen(),
          "/home": (context) => HomeScreen(),
          "/cadastro": (context) => Cadastro(),
          "/ex1": (context) => Exercicio1(),
          "/ex2": (context) => Exercicio2(),
          "/ex3": (context) => Exercicio3(),
          "/ex4": (context) => Exercicio4(),
          "/ex5": (context) => Exercicio5(),
          "/ex6": (context) => Exercicio6(),
          "/ex7": (context) => Exercicio7(),
          "/ex8": (context) => Exercicio8(),
          "/ex9": (context) => Exercicio9(),
          "/ex10_1": (context) => Exercicio10(pageNumber: 1),
          "/ex10_2": (context) => Exercicio10(pageNumber: 2),
          "/ex10_3": (context) => Exercicio10(pageNumber: 3),
          "/ex10_4": (context) => Exercicio10(pageNumber: 4),
          "/ex10_5": (context) => Exercicio10(pageNumber: 5, lastPage: true),
          "/ex11": (context) => Exercicio11(),
          "/ex11_cad": (context) => Exercicio11_cadastro(),
          "/ex12": (context) => Exercicio12(),
          "/ex13": (context) => Exercicio13(),
          "/ex14": (context) => Exercicio14(),
        },
      ),
    );
  }
}
