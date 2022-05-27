import 'package:bliss/constant/colors.dart';
import 'package:bliss/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class BlissNavigationBar extends StatefulWidget {
  const BlissNavigationBar({Key? key}) : super(key: key);

  @override
  State<BlissNavigationBar> createState() => _BlissNavigationBarState();
}

class _BlissNavigationBarState extends State<BlissNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: const BoxDecoration(
          color: blissblue200,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: NavItem(
                text: 'Home',
                icon: Icons.home,
                onTap: () {},
              )),
          Expanded(
              flex: 1,
              child: NavItem(
                  icon: Icons.calendar_month_outlined,
                  text: 'Sechdule',
                  onTap: () {})),
          Expanded(
              flex: 1,
              child: NavItem(
                  icon: Icons.restore_rounded, text: 'Activity', onTap: () {})),
          Expanded(
              flex: 1,
              child: NavItem(
                  icon: Icons.people_alt_sharp, text: 'Profile', onTap: () {})),
        ],
      ),
    );
  }
}
