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
                onPressed: () {},
                child: Text("2".tr),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text("3".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
