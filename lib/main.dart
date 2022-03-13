import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/Screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: HomePage(),
    );
  }
}
