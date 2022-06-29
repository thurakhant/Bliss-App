import 'package:bliss/constant/colors.dart';
import 'package:bliss/widgets/bliss_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Register'),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Join Our Bliss Team Member',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(height: 50),
                  nameField(),
                  const SizedBox(height: 30),
                  emailField(),
                  const SizedBox(height: 30),
                  passwordField(),
                  const SizedBox(height: 30),
                  confirmPasswordField(),
                  const SizedBox(height: 30),
                  role(),
                  const SizedBox(height: 50),
                  BlissButton(
                      color: blissblue200,
                      onTap: () => Get.toNamed('/home'),
                      text: 'Register')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextFormField nameField() {
  return TextFormField(
    decoration: const InputDecoration(
      label: Text('Fullname'),
      hintText: 'Enter Your Name',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextFormField emailField() {
  return TextFormField(
    decoration: const InputDecoration(
      label: Text('Email'),
      hintText: 'Enter Your Email',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextFormField passwordField() {
  return TextFormField(
    decoration: const InputDecoration(
      label: Text('Password'),
      hintText: 'New Password',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextFormField confirmPasswordField() {
  return TextFormField(
    decoration: const InputDecoration(
      label: Text('Confirm Password'),
      hintText: 'Confirm Password',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}

TextFormField role() {
  return TextFormField(
    decoration: const InputDecoration(
      label: Text('Role'),
      hintText: 'Specified who you are',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}
