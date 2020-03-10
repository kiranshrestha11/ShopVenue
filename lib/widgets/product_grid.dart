import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/product_provider.dart';
import 'package:shop_venue/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  final bool showFavourites;
  ProductGrid(this.showFavourites);
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context);
    final products =
        showFavourites ? loadedProducts.favourites : loadedProducts.items;
    return GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2),
        itemCount: products.length,
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
              value: products[index],
              child: ProductItem(),
            ));
    ;
  }
}
