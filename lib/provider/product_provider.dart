import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:shop_venue/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "first",
      title: "Watch",
      price: 2000.0,
      description: "The best watch that fits both classy and modern look",
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/81BDpSIwu3L._UL1500_.jpg",
      isFavourite: false,
    ),
    Product(
      id: "second",
      title: "Phone",
      price: 5000.0,
      description: "The best phone that fits both classy and modern look",
      imageUrl:
          "https://www.powerplanetonline.com/cdnassets/xiaomi_redmi_8a_2gb_32gb_01_m.jpg",
      isFavourite: false,
    ),
    Product(
        id: "third",
        title: "T-Shirt",
        price: 1000.0,
        description: "The best watch that fits both classy and modern look",
        isFavourite: false,
        imageUrl:
            "https://rukminim1.flixcart.com/image/704/704/jflfgcw0/t-shirt/x/6/s/m-mischief-harry-potter-tshirts-original-imaf4yy9xh9ygsgg.jpeg?q=70"),
    Product(
      id: "fourth",
      title: "Shoe",
      price: 2000,
      description: "The best shoe that fits both classy and modern look",
      imageUrl:
          "https://images-na.ssl-images-amazon.com/images/I/61utX8kBDlL._UL1100_.jpg",
      isFavourite: false,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
