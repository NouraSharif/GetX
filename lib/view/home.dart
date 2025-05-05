import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Container(height: 200),
          MaterialButton(
            onPressed: () {
              Get.toNamed("/pageone");
            },
            color: Colors.blue,
            child: Text("PageOne"),
          ),
          Container(height: 10),
          MaterialButton(
            onPressed: () {
              Get.offNamed("/pagetwo");
            },
            color: Colors.blue,
            child: Text("PageTwo"),
          ),
          Container(height: 10),
          MaterialButton(
            onPressed: () {
              Get.offAllNamed("/pagethree");
            },
            color: Colors.blue,
            child: Text("PageThree"),
          ),
          Container(height: 10),
          MaterialButton(
            onPressed: () {
              Get.back(); //المستخدم ما بيخرج من التطبيق في هاي الحالة==maybepop()
              //Navigator.of(context).pop(); //المستخدم بيخرج من التطبيق في هاي الحالة
            },
            color: Colors.blue,
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
