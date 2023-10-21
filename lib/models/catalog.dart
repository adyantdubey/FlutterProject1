class CatalogModel {
  static final items = [
    Item(
        id: 1,
        Pname: "IPHONE",
        price: 433201,
        desc: "its an iphone 15",
        image: "../assets/images/pfp.jpeg",
        color: "black")
  ];
}

class Item {
  final int id;
  final String Pname;
  final String desc;
  final int price;
  final String image;
  final String color;

  Item(
      {required this.id,
      required this.Pname,
      required this.desc,
      required this.price,
      required this.image,
      required this.color});
}
