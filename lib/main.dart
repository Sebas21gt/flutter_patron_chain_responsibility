import 'package:flutter/material.dart';
import 'ice_cream_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IceCreamPage(),
    );
  }
}
