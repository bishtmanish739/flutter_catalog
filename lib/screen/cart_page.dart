import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
        decoration: BoxDecoration(color: MyTheme.creamColor),
      ),
    );
  }
}
