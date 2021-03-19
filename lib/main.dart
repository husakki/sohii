import 'package:flutter/material.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/body/product/product_view.dart';
import 'package:sohii/ui/views/head/logo/logo_view.dart';
import 'package:sohii/ui/views/head/shoppingcarticon/shoppingcarticon_view.dart';

import 'constans.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      title: 'Sohii',
      home: Scaffold(
        body: Column(
          children: [
            LogoView(),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: ShoppingCartIconView(),
                )),
            ProductView(),
          ],
        ),
      ),
    );
  }
}
