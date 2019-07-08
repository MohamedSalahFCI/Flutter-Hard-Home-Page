import 'package:flutter/material.dart';
import 'home.dart';

ThemeData appthem = ThemeData(
  primaryColor: Color(0xFFF3791A),
);

void main() {
  runApp(MaterialApp(
    home: SmartHome(),
    debugShowCheckedModeBanner: false,
    theme: appthem,
  ));
}
