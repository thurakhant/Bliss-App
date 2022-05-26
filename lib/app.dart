import 'package:bliss/screens/login_page.dart';
import 'package:flutter/material.dart';

class BlissApp extends StatelessWidget {
  const BlissApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bliss',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
