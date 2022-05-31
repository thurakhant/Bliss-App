import 'package:bliss/constant/colors.dart';
import 'package:bliss/screens/page/activity.dart';
import 'package:bliss/screens/page/home.dart';
import 'package:bliss/screens/page/profile.dart';
import 'package:bliss/screens/page/sechdule.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final screens = [Home(), Sechdule(), Activity(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
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
