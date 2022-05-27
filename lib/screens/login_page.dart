import 'package:bliss/constant/colors.dart';
import 'package:bliss/screens/page/home.dart';
import 'package:bliss/widgets/bliss_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObsure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blissblue200,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome Bliss's Member",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      label: Text('Username'),
                      hintText: 'Enter Your Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: _isObsure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_isObsure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObsure = !_isObsure;
                          });
                        },
                      ),
                      label: const Text('Password'),
                      hintText: 'Enter Your Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  BlissButton(
                      color: blissblue200,
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      text: 'Login')
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
