import 'package:app1/view/home.dart';
import 'package:app1/view/screenfour.dart';
import 'package:app1/view/screenone.dart';
import 'package:app1/view/screenthree.dart';
import 'package:app1/view/screentwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      getPages: [
        GetPage(name: "/screenone", page: () => ScreenOne()),
        GetPage(name: "/screentwo", page: () => ScreenTwo()),
        GetPage(name: "/screenthree", page: () => ScreenThree()),
        GetPage(name: "/screenfour", page: () => ScreenFour()),
      ],
    );
  }
}
