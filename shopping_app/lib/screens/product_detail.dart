import 'package:flutter/material.dart';

class ProductDetailScreens extends StatelessWidget {
  /*  final String title;
  ProductDetailScreens(this.title); */
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productTitle = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(productTitle),
      ),
    );
  }
}
