import 'package:bliss/constant/colors.dart';
import 'package:bliss/screens/page/activity.dart';
import 'package:bliss/screens/page/home.dart';
import 'package:bliss/screens/login_page.dart';
import 'package:bliss/screens/page/profile.dart';
import 'package:bliss/screens/page/sechdule.dart';
import 'package:bliss/screens/welcome_page.dart';
import 'package:bliss/screens/register_page.dart';
import 'package:flutter/material.dart';

class BlissApp extends StatelessWidget {
  const BlissApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Bliss App';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const Home(),
        '/sechdule': (context) => const Sechdule(),
        'activity': (context) => const Activity(),
        '/profile': (context) => const Profile(),
      },
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: blissblue200,
          fontFamily: 'Poppin',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
            headline2: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            bodyText1: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: blissblue50),
          )),
    );
  }
}
