import 'package:flutter/material.dart';
import '../widget/app_drawar.dart';
import '../providers/product.dart';
import '../widget/user_productitem.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class UserProductScreen extends StatelessWidget {
  static const routeName = '/user-products';

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Product',
        ),
        actions: [
          IconButton(
            onPressed: () {
              //..
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(10.00),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (_, i) => Column(
            children: [
              UserProductItem(
                productsData.items[i].title,
                productsData.items[i].imageUrl,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
