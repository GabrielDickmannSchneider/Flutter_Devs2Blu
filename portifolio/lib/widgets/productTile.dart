import 'package:portifolio/Models/productModel2.dart';
import 'package:flutter/material.dart';

typedef ProductTileOnTap = void Function(ProductModel2 product);

class ProductTile extends StatelessWidget {
  final ProductModel2 product;
  final ProductTileOnTap? onClick;

  const ProductTile({required this.product, this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (this.onClick != null)
          this.onClick!(this.product);
      },
      leading: Image.network(
        product.imageURL,
        width: 120,
        errorBuilder: (context, error, stackTrace) {
          return Container(
              width: 120,
              child: Icon(Icons.no_photography_outlined));
        },
      ),
      title: Text(product.title),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            product.manufactor,
            style: TextStyle(fontSize: 8),
          ),
          Text(product.description)
        ],
      ),
      trailing: Text(
        "R\$ ${product.cost.toStringAsFixed(2)}",
        style: TextStyle(color: Colors.green, fontSize: 26),
      ),
    );
  }
}
