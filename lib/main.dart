import 'package:anone/constants/routes.dart';
import 'package:anone/screens/launch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: launchScreenRoute,
      routes: {
        launchScreenRoute: (context) => LaunchScreen(),
      },
    );
  }
}
