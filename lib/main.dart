import 'package:cvc_builder_web/screen/cv_builder/cv_builder_page.dart';
import 'package:cvc_builder_web/themes/web_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Builder',
      theme: web_theme(),
      home: CvBuilderPage(),
    );
  }
}
