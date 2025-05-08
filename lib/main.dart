import 'package:app1/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
      /* getPages: [
        GetPage(name: '/pageone', page: () => PageOne()),
        GetPage(name: '/pagetwo', page: () => PageTwo()),
        GetPage(name: '/pagethree', page: () => PageThree()),
      ],*/
    );
  }
}
