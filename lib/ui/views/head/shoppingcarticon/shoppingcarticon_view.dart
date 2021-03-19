import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shoppingcarticon_viewmodel.dart';

class ShoppingCartIconView extends StatelessWidget {
  const ShoppingCartIconView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShoppingCartIconViewModel>.reactive(
        builder: (context, model, child) => Stack(
              alignment: Alignment.bottomRight,
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 45,
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Center(child: Text(model.totalItems.toString())),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ],
            ),
        viewModelBuilder: () => ShoppingCartIconViewModel());
  }
}
