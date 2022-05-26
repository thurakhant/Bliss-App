import 'package:bliss/constant/colors.dart';
import 'package:bliss/widgets/bliss_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Container(
            width: 500,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                TextField(),
                BlissButton(
                    color: blissblue200,
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    text: 'Login')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
