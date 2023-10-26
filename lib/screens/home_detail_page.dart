import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';
import 'package:flutter_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl6.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).buttonTheme.colorScheme?.primary),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add To Cart".text.xl.make())
                .wh(200, 60)
          ],
        ).p8(),
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image,
                    width: 300,
                    height: 200,
                    alignment: Alignment.center,
                  )).p32(),
              Expanded(
                  child: VxArc(
                height: 30,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl5
                          .color(context.theme.primaryColor)
                          .make(),
                      catalog.desc.text.xl2
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Sit et magna kasd dolor amet sea. Sed accusam aliquyam ipsum voluptua dolor sed accusam, justo vero dolor ea elitr ipsum sanctus ipsum et at. Invidunt sit et magna amet eos, lorem aliquyam et sadipscing diam ea dolor rebum kasd magna, et justo at dolores sadipscing. Magna sit amet rebum kasd invidunt stet diam, sadipscing dolor diam invidunt sanctus. Invidunt ipsum et et at lorem magna ut amet voluptua. Sit."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).p64(),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
