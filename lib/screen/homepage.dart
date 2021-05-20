import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 13;

  //final dummylist = List.generate(50, (index) => CatalogModel.item[0]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //print(catalogJson);
    var decodedata = jsonDecode(catalogJson);
    //print(decodedata);
    final productdata = decodedata['products'];
    CatalogModel.item =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
    //print(productdata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to day $days'),
      ),
      drawer: MyDrawer(),
      body: (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogModel.item.length,
              itemBuilder: (context, index) {
                return ItemWidged(item: CatalogModel.item[index]);
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
