import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/cart_provider.dart';
import 'package:shop_venue/provider/product_provider.dart';
import 'package:shop_venue/screens/product_details_screen.dart';
import 'package:shop_venue/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shop Venue",
        theme: ThemeData(
            primaryColor: Colors.grey[300],
            accentColor: Colors.red,
            fontFamily: 'RobotoSlab'),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
        },
      ),
    );
  }
}
