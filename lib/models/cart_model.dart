import 'package:flutter_demo/models/catalog.dart';

class CartModel {
// creating a singleton
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  //catalog field

  late CatalogModel _catalog;

  // list of Ids
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog) {
    _catalog = newcatalog;
  }

  //get items in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  //Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
