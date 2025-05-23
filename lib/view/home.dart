import 'package:app1/services/settingsservices.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends GetView<SettingsServices> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (c) => Center(child: Text('${c.counter}')),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  controller.increase();
                },
                child: Text("Increase Container"),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  controller.sharedpref.clear();
                },
                child: Text("clear sharedpreference"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
