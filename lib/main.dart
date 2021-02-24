import 'package:b_community/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(UI());

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
