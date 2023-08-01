import 'package:flutter/material.dart';

class Exercicio4 extends StatefulWidget {
  const Exercicio4({super.key});

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  TextEditingController valor1Controller = TextEditingController();
  TextEditingController valor2Controller = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 4'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: valor1Controller,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Valor 1",
                    ),
                  ),
                ),
                TextField(
                  controller: valor2Controller,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Valor 2",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          calculate('+');
                        },
                        child: Text('+'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          calculate('-');
                        },
                        child: Text('-'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          calculate('*');
                        },
                        child: Text('*'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          calculate('/');
                        },
                        child: Text('/'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('= ${result}'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculate(String operacao) {
    double valor1 = double.tryParse(valor1Controller.text) ?? 0;
    double valor2 = double.tryParse(valor2Controller.text) ?? 0;;

    switch (operacao) {
      case '+': setState(() {
        result = valor1 + valor2;
      });
      break;
      case '-': setState(() {
        result = valor1 - valor2;
      });
      break;
      case '*': setState(() {
        result = valor1 * valor2;
      });
      break;
      case '/': setState(() {
        result = valor1 / valor2;
      });
      break;
    }
  }
}
