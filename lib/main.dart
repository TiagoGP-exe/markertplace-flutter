import 'package:flutter/material.dart';
import 'package:test1/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Outfit'),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
