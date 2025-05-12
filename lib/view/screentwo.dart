import 'package:app1/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});
  final c = Get.lazyPut(() => HomeController());
  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenTwo'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                GetBuilder<HomeController>(
                  init: HomeController(),
                  builder:
                      (controller) => Text(
                        "${controller.counter}",
                        style: TextStyle(fontSize: 30),
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
