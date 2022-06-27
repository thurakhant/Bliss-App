import 'package:bliss/screens/page/activity.dart';
import 'package:bliss/screens/page/home.dart';
import 'package:bliss/screens/page/profile.dart';
import 'package:bliss/screens/page/sechdule.dart';
import 'package:bliss/screens/setup/login_page.dart';
import 'package:bliss/screens/setup/register_page.dart';
import 'package:bliss/screens/welcome_page.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
    ),
    GetPage(
      name: '/register',
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: '/home',
      page: () => const Home(
        username: "",
      ),
    ),
    GetPage(
      name: '/sechdule',
      page: () => const SechdulePage(),
    ),
    GetPage(
      name: '/activity',
      page: () => const ActivityPage(),
    ),
    GetPage(
      name: '/register',
      page: () => const ProfilePage(),
    ),
  ];
}
