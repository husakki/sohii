import 'package:flutter/material.dart';
import 'package:sohii/ui/views/product/products.dart';
import 'package:sohii/ui/views/product/shoppingcartButton/shoppingcartbutton_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartButtonView extends StatelessWidget {
  final int amount;
  final String size;
  final Products products;
  ShoppingCartButtonView(
      {Key key, @required this.amount, this.size, this.products})
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
                  shadowColor: Color(0xffFFFFFF),
                ),
                child: Text("in den Warenkorb"),
                onPressed: () => {
                  model.addItem(amount, size, products),
                },
              ),
            ),
        viewModelBuilder: () => ShoppingCartButtonViewModel());
  }
}
