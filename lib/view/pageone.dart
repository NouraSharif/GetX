import 'package:app1/controller/pageone_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    PageOneController controller = Get.put(PageOneController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageOne'),
        backgroundColor: Colors.blue,
      ),
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
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed("/home");
              },
              child: Text("to home"),
            ),
            SizedBox(height: 20),
            //الخاصية الرابعة....==//bottomSheet ,dialog
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.snackbar("hello noura", "I miss you");
              },
              child: Text("SnackBar"),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                print(Get.isSnackbarOpen);
              },
              child: Text("check"),
            ),
          ],
        ),
      ),
    );
  }
}
