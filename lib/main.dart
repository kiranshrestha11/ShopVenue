import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_venue/provider/product_provider.dart';
import 'package:shop_venue/screens/product_details_screen.dart';
import 'package:shop_venue/screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        title: "Shop Venue",
        theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'RobotoSlab'),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
        },
      ),
    );
  }
}
