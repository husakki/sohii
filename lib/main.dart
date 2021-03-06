import 'package:flutter/material.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/home/header_view.dart';

import 'constans.dart';
import 'ui/views/product/product_view.dart';
import 'widgets/centered_view.dart';

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
        body: CenteredView(
          child: Column(
            children: [
              HeaderView(),
              ProductView(),
            ],
          ),
        ),
      ),
    );
  }
}
