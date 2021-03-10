import 'package:flutter/material.dart';
import 'package:sohii/datatypes/products.dart';
import 'package:stacked/stacked.dart';

import 'shoppingcartbutton_viewmodel.dart';

class ShoppingCartButtonView extends StatelessWidget {
  final String size;
  final Products products;
  ShoppingCartButtonView({Key key, this.size, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShoppingCartButtonViewModel>.reactive(
        builder: (context, model, child) => SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 1.0,
                  shadowColor: Color(0xffFFFFFF),
                ),
                child: Text("in den Warenkorb"),
                onPressed: size == null
                    ? null
                    : () => {
                          model.addItem(size, products),
                        },
              ),
            ),
        viewModelBuilder: () => ShoppingCartButtonViewModel());
  }
}
