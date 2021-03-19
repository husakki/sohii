import 'package:flutter/material.dart';
import 'package:sohii/datatypes/products.dart';
import 'package:stacked/stacked.dart';

import 'shoppingcartbutton_viewmodel.dart';

class ShoppingCartButtonView extends StatelessWidget {
  final Products products;
  final String buttonColor;
  ShoppingCartButtonView({Key key, this.products, this.buttonColor})
      : super(key: key);

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
                  shadowColor: Color(int.parse(buttonColor)),
                ),
                child: Text("in den Warenkorb"),
                onPressed: model.selectedSize == null
                    ? null
                    : () => {
                          model.addItem(model.selectedSize, products),
                        },
              ),
            ),
        viewModelBuilder: () => ShoppingCartButtonViewModel());
  }
}
