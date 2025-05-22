import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin'), backgroundColor: Colors.blue),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          height: 50,
          onPressed: () {
            sharedpref!.clear();
            Get.offAllNamed("/");
          },
          child: Text("Sign Out!"),
        ),
      ),
    );
  }
}
