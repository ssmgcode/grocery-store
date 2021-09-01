import 'package:flutter/material.dart';
import 'package:grocery_store/grocery_store_product.dart';

enum GroceryStoreState {
  normal,
  details,
  cart,
}

class GroceryStoreBLoC with ChangeNotifier {
  GroceryStoreState groceryStoreState = GroceryStoreState.normal;
  List<GroceryStoreProduct> catalog = List.unmodifiable(groceryProducts);

  void changeToNormalState() {
    groceryStoreState = GroceryStoreState.normal;
    notifyListeners();
  }

  void changeToCartState() {
    groceryStoreState = GroceryStoreState.cart;
    notifyListeners();
  }
}
