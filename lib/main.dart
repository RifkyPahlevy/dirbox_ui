import 'package:flutter/material.dart';
import '/screens/login.dart';
import 'package:login_dirbox/screens/profile.dart';

import '/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
