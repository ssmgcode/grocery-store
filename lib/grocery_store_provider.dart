import 'package:flutter/material.dart';
import 'package:grocery_store/grocery_store_bloc.dart';

class GroceryStoreProvider extends InheritedWidget {
  GroceryStoreProvider({
    required this.bloc,
    required this.child,
  }) : super(child: child);

  final GroceryStoreBLoC bloc;
  final Widget child;

  static GroceryStoreProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<GroceryStoreProvider>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
