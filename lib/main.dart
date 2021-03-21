import 'package:flutter/material.dart';
import 'package:sohii/ui/views/app/locator.dart';
import 'package:sohii/ui/views/screen_view.dart';

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
      home: ScreenView(),
    );
  }
}
