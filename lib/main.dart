import 'package:app1/middleware/auth_middleware.dart';
import 'package:app1/middleware/super_middleware.dart';
import 'package:app1/view/admin.dart';
import 'package:app1/view/home.dart';
import 'package:app1/view/login.dart';
import 'package:app1/view/super.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => Login(),
          middlewares: [AuthMiddleWare(), SuperMiddleWare()],
        ),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/admin", page: () => Admin()),
        GetPage(name: "/super", page: () => Super()),
      ],
    );
  }
}
