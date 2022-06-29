import '../../constant/colors.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // final username;
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thus', 'Fri'];
  String name = 'Thura Khant Thein';
  String major = 'Information and Technology';
  String semster = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: blissAppBar(),
      body: Scaffold(
        body: homeLayout(
          [
            Text('Weekly Attendance',
                style: Theme.of(context).textTheme.headline2),
            const SizedBox(height: 18),
            weeklyActivity(context, days),
            const SizedBox(height: 30),
            Text('Personal Information',
                style: Theme.of(context).textTheme.headline2),
            const SizedBox(height: 18),
            profile(context, name, major, semster),
            const SizedBox(height: 30),
            Text('Utility', style: Theme.of(context).textTheme.headline2),
            const SizedBox(height: 18),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: blissblue50,
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Colors.red,
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      )),
                  utilityButton(0, 20, 0, 20, icon: Icons.history_edu),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// AppBar
AppBar blissAppBar() {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    title: const Text('Home'),
  );
}

// Body Layout
Widget homeLayout(List<Widget> children) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    ),
  );
}

// Profile
Widget profile(BuildContext context, String name, major, semster) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 120,
    decoration: BoxDecoration(
        border: Border.all(color: blissblue300),
        borderRadius: BorderRadius.circular(20),
        color: blissblue50),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.red),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Name - $name',
                  style: Theme.of(context).textTheme.bodyText1),
              Text('Major - $major',
                  style: Theme.of(context).textTheme.bodyText1),
              Text('Semster - $semster',
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          )
        ],
      ),
    ),
  );
}

//Weekly Activity Components
Widget weeklyActivity(BuildContext context, List data) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    decoration: BoxDecoration(
        border: Border.all(color: blissblue300),
        borderRadius: BorderRadius.circular(10),
        color: blissblue50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: data
          .map((day) => Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent,
                  ),
                  width: 40,
                  height: 40,
                  child: Center(child: Text(day)),
                ),
              ))
          .toList(),
    ),
  );
}

Widget utilityButton(
  double topLeft,
  double topRight,
  double bottomLeft,
  double bottomRight, {
  IconData? icon,
}) {
  return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(topRight),
              bottomRight: Radius.circular(bottomRight),
              topLeft: Radius.circular(topLeft),
              bottomLeft: Radius.circular(bottomLeft)),
          color: Colors.pink,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 50,
            ),
            const Text('Books', style: TextStyle(fontSize: 14)),
          ],
        ),
      ));
}
