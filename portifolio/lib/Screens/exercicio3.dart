import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  Exercicio3({super.key});
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 3'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 300.0, bottom: 10.0),
              child: Text('Contador: ${cont}'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      cont ++;
                      (context as Element).markNeedsBuild();
                    },
                    child: Text('Adicionar'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (cont != 0) {
                      cont --;
                      (context as Element).markNeedsBuild();
                    }
                  },
                  child: Text('Remover'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
