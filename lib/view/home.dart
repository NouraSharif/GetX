import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Get.defaultDialog(
                    title: "تنبيه",
                    //middleText: "الرجاء محاولة الاتصال مرة اخرى",
                    content: Column(
                      children: [
                        Text("الرجاء محاولة الاتصال مرة اخرى"),
                        SizedBox(height: 10),
                        Text("هذا نص اضافي في مربع الحوار"),
                      ],
                    ),
                    titleStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    middleTextStyle: TextStyle(color: Colors.blueGrey),
                    //textCancel: "Cansel",
                    // onCancel: () => print("cancel"),
                    cancel: InkWell(
                      child: Text("cancel"),
                      onTap: () => print("cansel"),
                    ),
                    textConfirm: "Ok",

                    onConfirm: () => print("ok"),
                  );
                },
                child: Text("Dialog Getx"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
