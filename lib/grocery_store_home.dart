import 'package:flutter/material.dart';
import 'package:grocery_store/grocery_store_bloc.dart';
import 'package:grocery_store/grocery_store_list.dart';
import 'package:grocery_store/grocery_store_provider.dart';

const _backgroundColor = Color(0xfff6f5f2);
const cartBarHeight = 100.0;
const _panelTransitionDuration = Duration(
  milliseconds: 500,
);

class GroceryStoreHome extends StatefulWidget {
  const GroceryStoreHome({Key? key}) : super(key: key);

  @override
  _GroceryStoreHomeState createState() => _GroceryStoreHomeState();
}

class _GroceryStoreHomeState extends State<GroceryStoreHome> {
  final bloc = GroceryStoreBLoC();

  void _onVerticalGesture(DragUpdateDetails details) {
    print(details.primaryDelta);
    if (details.primaryDelta! < -7) {
      bloc.changeToCartState();
    } else if (details.primaryDelta! > 12) {
      bloc.changeToNormalState();
    }
  }

  double _getTopForWhitePanel(GroceryStoreState state, Size size) {
    if (state == GroceryStoreState.normal) {
      return -cartBarHeight;
    } else if (state == GroceryStoreState.cart) {
      return -(size.height - kToolbarHeight - cartBarHeight / 2);
    }
    return 0.0;
  }

  double _getTopForBlackPanel(GroceryStoreState state, Size size) {
    if (state == GroceryStoreState.normal) {
      return size.height - kToolbarHeight - cartBarHeight;
    } else if (state == GroceryStoreState.cart) {
      return cartBarHeight / 2;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GroceryStoreProvider(
      bloc: bloc,
      child: AnimatedBuilder(
        animation: bloc,
        builder: (BuildContext context, _) => SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: <Widget>[
                _AppBarGrocery(),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      AnimatedPositioned(
                        curve: Curves.decelerate,
                        duration: _panelTransitionDuration,
                        left: 0,
                        right: 0,
                        top: _getTopForWhitePanel(bloc.groceryStoreState, size),
                        height: size.height - kToolbarHeight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: GroceryStoreList(),
                        ),
                      ),
                      AnimatedPositioned(
                        curve: Curves.decelerate,
                        duration: _panelTransitionDuration,
                        left: 0,
                        right: 0,
                        top: _getTopForBlackPanel(bloc.groceryStoreState, size),
                        height: size.height,
                        child: GestureDetector(
                          onVerticalDragUpdate: _onVerticalGesture,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
