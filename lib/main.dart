import 'package:app1/view/home.dart';
import 'package:app1/view/pageone.dart';
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
    // استعادة الثيم المحفوظ أو استخدام الوضع الفاتح كافتراضي
    final savedTheme = sharedpref?.getString('theme');
    final initialTheme =
        savedTheme == 'dark' ? Themes.customDarkMode : Themes.customLightMode;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: initialTheme, //Themes.customLightMode,
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/pageone", page: () => PageOne()),
      ],
    );
  }
}

class Themes {
  static ThemeData customLightMode = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.green),
    // buttonTheme: ButtonThemeData(buttonColor: Colors.amber),==تم اهماله رسميا
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
    ),
  );
  static ThemeData customDarkMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: Colors.orange),
    //buttonTheme: ButtonThemeData(buttonColor: Colors.deepPurpleAccent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
    ),
  );
}
