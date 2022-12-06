import 'package:cvc_builder_web/themes/input_theme.dart';
import 'package:flutter/material.dart';

ThemeData web_theme() {
  return ThemeData(
    fontFamily: 'Inter',
    inputDecorationTheme: inputTheme(),
  );
}
