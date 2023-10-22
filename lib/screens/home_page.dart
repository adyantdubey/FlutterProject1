import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "dart:convert";
import 'package:flutter_demo/models/catalog.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:flutter_demo/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    var productsData = decodedData["products"];
    print(productsData);
  }

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
