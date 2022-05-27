import 'package:bliss/constant/colors.dart';
import 'package:bliss/widgets/bliss_navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: BlissNavigationBar(),
    );
  }
}
