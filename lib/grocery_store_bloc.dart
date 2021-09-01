import 'package:flutter/material.dart';

enum GroceryStoreState {
  normal,
  details,
  cart,
}

class GroceryStoreBLoC with ChangeNotifier {
  GroceryStoreState groceryStoreState = GroceryStoreState.normal;

  void changeToNormalState() {
    groceryStoreState = GroceryStoreState.normal;
    notifyListeners();
  }

  void changeToCartState() {
    groceryStoreState = GroceryStoreState.cart;
    notifyListeners();
  }
}
