import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/screens/screen2_nested.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  static const routeName = "Screen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(Screen2Nested.routeName);
              },
              child: const Text("Open Page 2 Nested"),
            )
          ],
        ),
      ),
    );
  }
}
