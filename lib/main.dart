import 'package:app_salud/screens/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:app_salud/colors/myColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}