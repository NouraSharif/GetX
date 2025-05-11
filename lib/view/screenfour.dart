import 'package:app1/controller/rebuildcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFour extends StatelessWidget {
  final RebuildController extcontroller = Get.put(RebuildController());
  ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenFour'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<RebuildController>(
              init: RebuildController(),
              builder: (controller) {
                print("rebuild count1");
                return Text("${controller.count1}");
              },
            ),
            Container(height: 10),
            GetBuilder<RebuildController>(
              builder: (controller) {
                print("rebuild count2");
                return Text("${controller.count2}");
              },
            ),
            Container(height: 10),
            GetBuilder<RebuildController>(
              init: RebuildController(),
              builder: (controller) {
                print("rebuild sum");
                return Text("${controller.sum}");
              },
            ),
            Container(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                extcontroller.incrementOne();
              },
              child: Text("Add One"),
            ),
            Container(height: 10),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                extcontroller.incrementTwo();
              },
              child: Text("Add Two"),
            ),
          ],
        ),
      ),
    );
  }
}
