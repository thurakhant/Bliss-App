import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData icon;
  const NavItem({
    required this.icon,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }
}
