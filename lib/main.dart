import 'package:flutter/material.dart';
import 'package:login/UI/LoginPage/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

