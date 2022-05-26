import 'package:bliss/constant/colors.dart';
import 'package:bliss/widgets/bliss_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bliss App'),
          backgroundColor: blissblue200,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome Blisster',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlissButton(
                                color: blissblue200,
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                text: 'Login'),
                            BlissButton(
                                color: blissblue100,
                                onTap: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                text: 'Register')
                          ],
                        ),
                      ),
                    ],
                  )),
              const Expanded(flex: 1, child: SizedBox())
            ],
          ),
        ));
  }
}
