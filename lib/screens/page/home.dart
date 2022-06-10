import '../../constant/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thus', 'Fri'];
  Home({this.user, Key? key}) : super(key: key);
  final User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: blissAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: homeLayout(
            [
              const Text('Weekly Activity'),
              const SizedBox(height: 20),
              weeklyActicity(context, days),
              Center(
                child: Text(user!.email.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// AppBar
AppBar blissAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Text('Home'),
  );
}

// Body Layout
Column homeLayout(List<Widget> children) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: children,
  );
}

//Weekly Activity Components
Widget weeklyActicity(BuildContext context, List data) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: blissblue50),
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
