import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatelessWidget {

  final List<Map<String, dynamic>> products;

  ProductManager(this.products);


  @override
  Widget build(BuildContext context) {
    print("[ProductManager Widget] Build");
    return Column(
      children: [
        Expanded(
            child: Products(
          products
        ))
      ],
    );
  }
}
