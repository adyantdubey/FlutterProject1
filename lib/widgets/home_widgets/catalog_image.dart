import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String imageUrl;

  const CatalogImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .w40(context)
        .p16();
  }
}
