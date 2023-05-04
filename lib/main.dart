import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/screens/home_screen.dart';
import 'package:go_router_test/screens/screen1.dart';
import 'package:go_router_test/screens/screen2.dart';
import 'package:go_router_test/screens/screen2_nested.dart';
import 'package:go_router_test/screens/screen3.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(
      name: "/",
      path: "/",
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: Screen1.routeName,
          path: Screen1.routeName,
          builder: (context, state) => const Screen1(),
        ),
        GoRoute(
            name: Screen2.routeName,
            path: Screen2.routeName,
            builder: (context, state) => const Screen2(),
            routes: [
              GoRoute(
                name: Screen2Nested.routeName,
                path: Screen2Nested.routeName,
                builder: (context, state) => const Screen2Nested(),
              ),
            ]),
        GoRoute(
          name: Screen3.routeName,
          path: Screen3.routeName,
          builder: (context, state) => const Screen3(),
        ),
      ],
    ),
  ]);
}
