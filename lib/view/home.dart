import 'package:app1/locale/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerlang = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text('1'.tr), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  controllerlang.changeLang("ar");
                },
                child: Text("2".tr),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  controllerlang.changeLang("en");
                },
                child: Text("3".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
