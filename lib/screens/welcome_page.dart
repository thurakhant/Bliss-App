import '../constant/colors.dart';
import 'setup/login_page.dart';
import 'setup/register_page.dart';
import '../widgets/bliss_button.dart';
import 'package:flutter/material.dart';

// Go to SignIn
MaterialPageRoute<dynamic> navigateToSigIn() {
  return MaterialPageRoute(
      builder: (context) => const LoginPage(), fullscreenDialog: true);
}

// Go to Register
MaterialPageRoute<dynamic> navigateToRegister() {
  return MaterialPageRoute(
      builder: (context) => const RegisterPage(), fullscreenDialog: true);
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return welcomeScaffold(
      appBar: blissAppBar("Bliss App"),
      bodypadding: 60,
      body: [
        Text(
          'Welcome Blisster',
          style: Theme.of(context).textTheme.headline1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlissButton(
                color: blissblue200,
                onTap: () {
                  Navigator.push(context, navigateToSigIn());
                },
                text: 'Login'),
            BlissButton(
                color: blissblue100,
                onTap: () {
                  Navigator.push(context, navigateToRegister());
                },
                text: 'Register'),
          ],
        ),
      ],
    );
  }
}

Scaffold welcomeScaffold(
    {required double bodypadding,
    required AppBar appBar,
    required List<Widget> body}) {
  return Scaffold(
    appBar: appBar,
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: bodypadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: body,
        ),
      ),
    ),
  );
}

AppBar blissAppBar(String name) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(name),
  );
}
