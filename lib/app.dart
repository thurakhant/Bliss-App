import 'package:bliss/routes/routes.dart';

import 'constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlissApp extends StatelessWidget {
  const BlissApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Bliss App';
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      initialRoute: '/',
      getPages: Routes.routes,
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
