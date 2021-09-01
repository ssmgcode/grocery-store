import 'package:flutter/material.dart';

const _backgroundColor = Color(0xfff6f5f2);
const _cartBarHeight = 100.0;

class GroceryStoreHome extends StatelessWidget {
  const GroceryStoreHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          _AppBarGrocery(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: -_cartBarHeight,
                  height: size.height - kToolbarHeight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: size.height - kToolbarHeight - _cartBarHeight,
                  height: size.height,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarGrocery extends StatelessWidget {
  const _AppBarGrocery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: _backgroundColor,
      child: Row(
        children: <Widget>[
          BackButton(
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              'Fruits and vegetables',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
