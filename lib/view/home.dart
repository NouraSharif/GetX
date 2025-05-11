import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/screenone');
              },
              child: Text('ScreenOne', style: TextStyle(color: Colors.white)),
            ),
            Container(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/screentwo');
              },
              child: Text('ScreenTwo', style: TextStyle(color: Colors.white)),
            ),
            Container(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/screenthree');
              },
              child: Text('ScreenThree', style: TextStyle(color: Colors.white)),
            ),
            Container(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed('/screenfour');
              },
              child: Text('ScreenFour', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
