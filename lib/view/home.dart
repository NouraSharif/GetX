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
                  Get.toNamed(
                    "/pageone",
                    //الخاصية الاولى
                    arguments: {
                      "name": "Noura Hassanin",
                      "age": "23",
                      "birthday": "25/5/2002",
                    },
                  );
                },
                child: Text("to pageone"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
