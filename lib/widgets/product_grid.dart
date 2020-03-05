import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/product_provider.dart';
import 'package:shop_venue/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => ProductItem(
              id: loadedProducts[index].id,
              title: loadedProducts[index].title,
              imageUrl: loadedProducts[index].imageUrl,
            ));
    ;
  }
}
