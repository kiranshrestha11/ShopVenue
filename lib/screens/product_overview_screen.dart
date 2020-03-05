import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/models/product.dart';
import 'package:shop_venue/provider/product_provider.dart';
import 'package:shop_venue/widgets/product_grid.dart';
import 'package:shop_venue/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP VENUE"),
        centerTitle: true,
      ),
      body: ProductGrid(),
    );
  }
}
