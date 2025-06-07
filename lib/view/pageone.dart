import 'package:app1/controller/pageone_controller.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    PageOneController controller = Get.put(PageOneController());
    return Scaffold(
      appBar: AppBar(title: const Text('PageOne')),
      body: Center(
        child: Column(
          children: [
            //الخاصية الاولى==argumints
            Text("${controller.name}"),
            SizedBox(height: 10),
            Text("${controller.age}"),
            SizedBox(height: 10),
            Text("${controller.birthday}"),
            SizedBox(height: 10),
            //الخاصية الثانية==لكن استخدام الكونترولر ينظم الكود
            Text(Get.previousRoute),
            SizedBox(height: 10),
            //الخاصية الثالثة
            Text(Get.currentRoute),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: Text("to home"),
            ),
            SizedBox(height: 20),
            //الخاصية الرابعة....==//bottomSheet ,dialog
            ElevatedButton(
              onPressed: () {
                Get.snackbar("hello noura", "I miss you");
              },
              child: Text("SnackBar"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(Get.isSnackbarOpen);
              },
              child: Text("check"),
            ),

            //الخاصية الخامسة
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(GetPlatform.isDesktop);
              },
              child: Text("platform"), //true==emulator(chroom)
            ),
            //الخاصية السادسة
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(Get.height);
              },
              child: Text("Dimensions-height"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(Get.width);
              },
              child: Text("Dimensions-width"),
            ),
            //الخاصية السابعة
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(context.isLandscape); //false :الوضع الافقي
                //isportrait ==true لانه الكروم ع الاغلب دائما في الوضع الطولي
              },
              child: Text("isLandscape-portrait"),
            ),
            //الخاصية الثامنة
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(context.isLargeTablet); //false ==هو مش تابلت اساسا
              },
              child: Text("tablet"),
            ),

            //-------------------------------------------------------------------
            //ThemeData
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(Themes.customLightMode);
                  sharedpref!.setString("theme", "light");
                } else {
                  Get.changeTheme(Themes.customDarkMode);
                  sharedpref!.setString("theme", "dark");
                }
              },
              child: Text("Themes"),
            ),
          ],
        ),
      ),
    );
  }
}
