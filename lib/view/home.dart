import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hompage"), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      padding: EdgeInsets.all(40),
                      //ضفنا خواص متطابقة لخواص البوردر
                      decoration: ShapeDecoration(
                        color: Colors.white, // لا تنسَ لون الخلفية لتكون ظاهرة
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      height:
                          200, // 👈 هذا يحدد الارتفاع فقط على قدر مربع في أسفل الشاشة
                      width: 500,

                      child: Text("Hello everyone"),
                    ),

                    enterBottomSheetDuration: Duration(seconds: 1),
                    exitBottomSheetDuration: Duration(seconds: 1),
                    isDismissible: true,
                    shape: BeveledRectangleBorder(
                      side: BorderSide(color: Colors.blue, width: 5.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  );
                },
                child: Text("SnakBar Getx"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
