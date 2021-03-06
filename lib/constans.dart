import 'dart:ui';

import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  fontFamily: 'Sora',
  scaffoldBackgroundColor: Color(0xff131313),
  textTheme: TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: Colors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(),
);
