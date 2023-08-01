import 'package:flutter/material.dart';

class Exercicio10 extends StatelessWidget {

  final int pageNumber;
  final bool? lastPage;

  const Exercicio10({required this.pageNumber, this.lastPage, super.key});

  bool get isFirstPage => this.pageNumber == 1;

  bool get isLastPage => (this.lastPage ?? false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 10'),
      ),
      body: Center(
        child: Text("Página ${this.pageNumber}", style: TextStyle(fontSize: 34),),
      ),
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (!this.isFirstPage ? () {
            Navigator.of(context).pushReplacementNamed("/ex10_${this.pageNumber - 1}");
          } : null), icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: (!this.isLastPage ? () {
            Navigator.of(context).pushReplacementNamed("/ex10_${this.pageNumber + 1}");
          } : null), icon: Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
