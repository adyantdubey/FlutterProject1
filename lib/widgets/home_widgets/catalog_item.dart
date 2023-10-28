// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_demo/models/cart_model.dart';
import 'package:flutter_demo/models/catalog.dart';
import 'package:flutter_demo/screens/home_page.dart';
import 'package:flutter_demo/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_demo/widgets/themes.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              imageUrl: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.xl3.color(context.primaryColor).make(),
              catalog.desc.text.lg.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.make(),
                  AddToCart(catalog: catalog)
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).roundedLg.square(200).make().py16();
  }
}
