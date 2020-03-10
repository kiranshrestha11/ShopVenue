import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/models/product.dart';
import 'package:shop_venue/provider/cart_provider.dart';
import 'package:shop_venue/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedProduct = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductDetailsScreen.routeName,
                arguments: selectedProduct.id);
          },
          child: Hero(
            child: Image.network(
              selectedProduct.imageUrl,
              fit: BoxFit.cover,
            ),
            tag: 'product${selectedProduct.id}',
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            selectedProduct.title,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (BuildContext context, Product value, Widget child) {
              return IconButton(
                icon: Icon(selectedProduct.isFavourite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () {
                  selectedProduct.toggleIsFavourite();
                },
                color: Theme.of(context).accentColor,
              );
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              cart.addItem(selectedProduct.id, selectedProduct.price,
                  selectedProduct.title);
            },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
