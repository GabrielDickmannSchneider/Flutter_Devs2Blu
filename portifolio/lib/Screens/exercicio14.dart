import 'package:flutter/material.dart';
import 'package:portifolio/Models/productDetail.dart';
import 'package:portifolio/widgets/productTile.dart';
import 'package:portifolio/Models/productModel2.dart';

class Exercicio14 extends StatelessWidget {

  final List<ProductModel2> _products = [
    ProductModel2(
        title: "Foca",
        description: "Foca no curso",
        manufactor: "Mãe natureza",
        cost: 8,
        imageURL:
        "https://upload.wikimedia.org/wikipedia/commons/9/9c/B%C3%A9b%C3%A9_Phoque_de_Weddell_-_Baby_Weddell_Seal.jpg"),
    ProductModel2(
        title: "Picanha",
        description: "Carninha",
        manufactor: "Boi e Vaca",
        cost: 78,
        imageURL:
        "https://media.gazetadopovo.com.br/2023/01/15103216/picanha-960x540.jpg"),
    ProductModel2(
        title: "Batom",
        description: "Batom rosa",
        manufactor: "Fábrica de batom (não o de comer)",
        cost: 22,
        imageURL:
        "https://hinodegroup.vtexassets.com/arquivos/ids/158180/25274-rosapop1100x1100.png")
  ];

  Exercicio14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 14"),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) => ProductTile(
            product: _products[index],
            onClick: (product) => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetail(product: product),
            ))),
      ),
    );
  }
}


