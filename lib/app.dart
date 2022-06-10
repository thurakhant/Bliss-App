import 'constant/colors.dart';
import 'screens/main_page.dart';
import 'screens/page/activity.dart';
import 'screens/page/home.dart';

import 'screens/page/profile.dart';
import 'screens/page/sechdule.dart';
import 'screens/setup/login_page.dart';
import 'screens/welcome_page.dart';
import 'screens/setup/register_page.dart';
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
        // '/main': (context) => const MainPage(),
        '/home': (context) => Home(),
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
