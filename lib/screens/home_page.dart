import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Flutter part $num"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
