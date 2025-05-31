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
                  Get.snackbar(
                    "Woow!",
                    "Well Done",
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 10),
                    //snackPosition: SnackPosition.BOTTOM,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.amberAccent,
                        blurRadius: 40,
                        offset: Offset(2.0, 2.0),
                        spreadRadius: 10,
                      ),
                    ],
                    maxWidth: 450.0,
                    titleText: Text(
                      "Very Good!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    messageText: Text(
                      "You have successfully completed the task.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
