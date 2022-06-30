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
            utility(context),
            const SizedBox(height: 30),
            Text('Today Class', style: Theme.of(context).textTheme.headline2)
          ],
        ),
      ),
    );
  }

// Utility
  Container utility(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: blissblue50,
        ),
        child: Row(
          children: [
            utilityButton(Icons.book, 'Books'),
            utilityButton(Icons.qr_code, 'Scan QR'),
            utilityButton(Icons.people, 'Request Absent'),
            utilityButton(Icons.history_edu, 'Exam Result'),
          ],
        ),
      );
}

// AppBar
AppBar blissAppBar() => AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: const Text('Home'),
    );

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
Widget profile(BuildContext context, String name, major, semster) => Container(
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

//Weekly Activity Components

// Attendence
Widget weeklyActivity(BuildContext context, List data) => Container(
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

// Utility Button
Widget utilityButton(IconData? icon, String text) => Expanded(
    flex: 1,
    child: Material(
      borderRadius: BorderRadius.circular(20),
      color: blissblue50,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.blueGrey,
        onTap: () {
          print('clicked');
        },
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                size: 50,
              ),
              Text(text, style: const TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    ));
