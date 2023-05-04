import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  static const routeName = "Screen3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GoRouter.of(context).location.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed("/");
              },
              child: const Text("Go to Home"),
            )
          ],
        ),
      ),
    );
  }
}
