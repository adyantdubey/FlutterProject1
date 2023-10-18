import 'dart:ffi';

class Item {
  final String id;
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

final products = [
  Item(
      id: '1101',
      Pname: "IPHONE",
      price: 433201,
      desc: "its an iphone 15",
      image: "https://google.com",
      color: "black")
];
