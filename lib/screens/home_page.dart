import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:flutter_demo/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyitem = List.generate(20, (index) => CatalogModel.items[0]);
    int num = 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: dummyitem.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyitem[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
