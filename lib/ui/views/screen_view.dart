import 'package:flutter/material.dart';
import 'package:sohii/ui/views/body/product/product_view.dart';
import 'package:sohii/ui/views/head/logo/logo_view.dart';
import 'package:stacked/stacked.dart';

import 'head/shoppingcarticon/shoppingcarticon_view.dart';
import 'screen_viewmodel.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScreenViewModel>.nonReactive(
        builder: (context, model, child) => Scaffold(
              body: Column(
                children: [
                  LogoView(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 85),
                      child: ShoppingCartIconView(),
                    ),
                  ),
                  ProductView(),
                ],
              ),
            ),
        viewModelBuilder: () => ScreenViewModel());
  }
}
