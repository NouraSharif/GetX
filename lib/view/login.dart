import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), backgroundColor: Colors.blue),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedpref!.setString("role", "user");
                    Get.offNamed("/home");
                  },

                  child: Text(
                    "Login User",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedpref!.setString("role", "admin");
                    Get.offNamed("/admin");
                  },

                  child: Text(
                    "Login Admin",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
