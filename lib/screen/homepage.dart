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

  final dummylist = List.generate(50, (index) => CatalogModel.item[0]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //print(catalogJson);
    var decodedata = jsonDecode(catalogJson);
    //print(decodedata);
    final productdata = decodedata['products'];
    //print(productdata);
  }

  @override
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
