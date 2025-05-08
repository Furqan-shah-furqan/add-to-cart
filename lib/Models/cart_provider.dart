import 'package:add_to_cart_2/Models/item_class.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List addItemsToCart = [];

  void addtoCart(ItemClass item) {
    addItemsToCart.add(item);
    notifyListeners();
  }
}
