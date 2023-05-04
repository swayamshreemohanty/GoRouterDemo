import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/screens/screen1.dart';
import 'package:go_router_test/screens/screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(Screen1.routeName);
              },
              child: const Text("Open Page 1"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.goNamed(Screen2.routeName);
              },
              child: const Text("Open Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
