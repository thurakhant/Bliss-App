import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import 'page/activity.dart';
import 'page/home.dart';
import 'page/profile.dart';
import 'page/sechdule.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final User? user;
  const MainPage({this.user, Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var username = Get.arguments;
    //var username = widget.user!.email.toString();
    return Scaffold(
      body: currentIndex == 0
          ? Home(
              username: username,
            )
          : currentIndex == 1
              ? const SechdulePage()
              : currentIndex == 2
                  ? const ActivityPage()
                  : currentIndex == 3
                      ? const ProfilePage()
                      : null,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blissblue100,
        selectedItemColor: blissblue300,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Time Table'),
          BottomNavigationBarItem(
              icon: Icon(Icons.restore_rounded), label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_sharp), label: 'Profile'),
        ],
      ),
    );
  }
}
