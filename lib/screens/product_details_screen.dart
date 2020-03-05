import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/product_provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product_details_screen';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedProduct = Provider.of<Products>(context).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.title),
      ),
    );
  }
}
