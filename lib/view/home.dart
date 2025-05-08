import 'package:app1/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatelessWidget {
  //Obx ==> dependency injection
  final HomeController controller = Get.put(HomeController());
  Home({super.key});

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
            //GetBuilder - Getx
            Obx(
              () => Row(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: Icon(Icons.remove),
                  ),
                  SizedBox(width: 20), // مسافة بين الأزرار والنص
                  Text(
                    "${controller.counter}", //value == RxInt
                    style: TextStyle(fontSize: 30),
                  ), // أنظف وأوضح
                  SizedBox(width: 20), // مسافة بين الأزرار والنص
                  IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
