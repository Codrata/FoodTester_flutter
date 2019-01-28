import 'package:flutter/material.dart';
import './products.dart';
import './product_controller.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print("[ProductManager Widget] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("[ProductManager Widget] createState");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print("[ProductManager Widget] initState");
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[ProductManager Widget] didUpdate");
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("[ProductManager Widget] Build");
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductController(_addProducts),
        ),
        Products(_products)
      ],
    );
  }
}
