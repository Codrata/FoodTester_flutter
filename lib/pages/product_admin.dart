import 'package:flutter/material.dart';
import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Navigate'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                leading: Icon(Icons.shop_two),
                title: Text('Product Lists'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, './');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Products',
              ),
              Tab(icon: Icon(Icons.list),
                  text: 'My Products'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget> [
            ProductCreatePage(addProduct),
            ProductListPage(),
        ],),
        ),
      );
  }
}
