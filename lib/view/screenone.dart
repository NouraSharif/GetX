import 'package:app1/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  //HomeController controller = Get.put(HomeController(), permanent: true);==لانه lazyPut كافية
  //final c = Get.lazyPut(() => HomeController());
  final HomeController controller = Get.find();
  //final==>لحتى يلتغى الديباق كامل
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenOne', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
                SizedBox(width: 20), // مسافة بين الأزرار والنص
                GetBuilder<HomeController>(
                  builder:
                      (controller) => Text(
                        "${controller.counter}", //value == RxInt
                        style: TextStyle(fontSize: 30),
                      ),
                ),

                SizedBox(width: 20), // مسافة بين الأزرار والنص
                IconButton(
                  onPressed: () {
                    controller.increment();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
