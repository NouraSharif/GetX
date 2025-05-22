import 'package:flutter/material.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Super'), backgroundColor: Colors.blue),
      body: const Center(child: Text('Welcome to Super!')),
    );
  }
}
