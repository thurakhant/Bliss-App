import '../../constant/colors.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final username;
  const Home({required this.username, Key? key}) : super(key: key);

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
                style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 18),
            weeklyActivity(context, days),
            const SizedBox(height: 30),
            Text('Personal Information',
                style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 18),
            profile(context, name, major, semster),
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
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.fill)),
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
