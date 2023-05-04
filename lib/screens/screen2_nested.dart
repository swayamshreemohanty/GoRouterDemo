import 'package:flutter/material.dart';

class Screen2Nested extends StatelessWidget {
  const Screen2Nested({super.key});
  static const routeName = "Screen2Nested";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: const Center(
        child: Text("Screen 2 Nested"),
      ),
    );
  }
}
