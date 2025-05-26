import 'package:app1/locale/locale.dart';
import 'package:app1/locale/locale_controller.dart';
import 'package:app1/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedpref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      locale: controller.initalLang,
      translations: MyLocale(),
      initialRoute: "/home",
      getPages: [GetPage(name: "/home", page: () => Home())],
    );
  }
}
