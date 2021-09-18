import 'package:flutter/material.dart';
import './providers/orders.dart';
import '../screens/cart_screen.dart';
import '../providers/cart.dart';
import '../screens/product_detail.dart';
import './screens/product_overview_screen.dart';
import './providers/product.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyaShop',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        //home: ProductsOverviewScreen(),
        routes: {
          '/': (ctx) => ProductsOverviewScreen(),
          ProductDetailScreens.routeName: (ctx) => ProductDetailScreens(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
