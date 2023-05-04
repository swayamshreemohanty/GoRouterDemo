import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/screens/screen2.dart';
import 'package:go_router_test/screens/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  static const routeName = "Screen1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(Screen2.routeName);
              },
              child: const Text("Open Page 2"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(Screen3.routeName);
              },
              child: const Text("Open Page 3"),
            )
          ],
        ),
      ),
    );
  }
}
