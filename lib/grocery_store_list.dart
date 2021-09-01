import 'package:flutter/material.dart';
import 'package:grocery_store/grocery_store_home.dart';
import 'package:grocery_store/grocery_store_provider.dart';

class GroceryStoreList extends StatelessWidget {
  const GroceryStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = GroceryStoreProvider.of(context).bloc;
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: cartBarHeight,
      ),
      itemCount: bloc.catalog.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          width: 100,
          color: Colors.primaries[index % Colors.primaries.length],
        );
      },
    );
  }
}
