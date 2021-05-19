import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidged extends StatelessWidget {
  final Item item;

  const ItemWidged({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        subtitle: Text(item.desc),
        title: Text(item.name),
        trailing: Text("\$${item.price}"),
        onTap: () {},
      ),
    );
  }
}
