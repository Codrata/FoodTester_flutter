import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String _titleValue;
  String _descriptionValue;
  double _priceValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product Title', prefixIcon: Icon(Icons.title, color: Colors.lightBlueAccent)),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Description', prefixIcon: Icon(Icons.description, color: Colors.lightBlueAccent)),
            maxLength: 450,
            maxLines: 3,
            onChanged: (String description) {
              setState(() {
                _descriptionValue = description;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price', prefixIcon: Icon(Icons.attach_money, color: Colors.lightBlueAccent)),
            keyboardType: TextInputType.number,
            onChanged: (String price) {
              setState(() {
                _priceValue = double.parse(price);
              });
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Save Product'),
                onPressed: () {
                  final Map <String, dynamic> product = {
                    'title' : _titleValue,
                  'description' : _descriptionValue,
                    'price' : _priceValue,
                    'image' : 'assets/food.jpg'
                  };
                  widget.addProduct(product);
                  Navigator.pushReplacementNamed(context, './');
                }),
          )

        ],
      ),
    );
  }
}
