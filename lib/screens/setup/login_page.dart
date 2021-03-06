import 'package:bliss/screens/page/home.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../widgets/bliss_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password;

  bool _isObsure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: blissblue200,
        title: const Text('Login'),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Bliss's Member",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    child: Column(
                      children: [
                        emailField(),
                        const SizedBox(height: 30),
                        passwordField(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  BlissButton(
                      color: blissblue200,
                      onTap: () => Get.off(() => const Home()),
                      text: 'Login'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField passwordField() {
    return TextFormField(
      validator: (input) {
        if (input!.length < 6) {
          return 'Please type an password.';
        }
      },
      onSaved: (input) => password = input,
      obscureText: _isObsure,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(_isObsure ? Icons.visibility : Icons.visibility_off),
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
    );
  }

  TextFormField emailField() {
    return TextFormField(
      validator: (input) {
        if (input!.isEmpty) return 'Please type an username.';
        return null;
      },
      onSaved: (input) => email = input,
      decoration: const InputDecoration(
        label: Text('Username'),
        hintText: 'Enter Your Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }

  // void signIn() async {
  //   final User user;
  //   final formState = formKey.currentState;
  //   if (formState!.validate()) {
  //     formState.save();
  //     try {
  //       final UserCredential userCredential = await FirebaseAuth.instance
  //           .signInWithEmailAndPassword(
  //               email: email.toString(), password: password.toString());
  //       var username = userCredential.user!.email;
  //       // ignore: use_build_context_synchronously

  //       Get.off(const MainPage(), arguments: ['$username']);
  //     } catch (e) {
  //       print(e.toString());
  //     }
  //   }
  // }
}
