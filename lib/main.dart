import 'package:api_gridview_sample/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
