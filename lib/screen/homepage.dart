import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 12;
  final dummylist = List.generate(50, (index) => CatalogModel.item[0]);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to day $days'),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidged(item: dummylist[index]);
        },
      ),
    );
  }
}
