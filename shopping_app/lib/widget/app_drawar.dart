import 'package:flutter/material.dart';
import '../screens/user_product.dart';
import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Thanks for shopping'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('orders'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                Orderscreen.routeName,
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage products'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                UserProductScreen.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}
