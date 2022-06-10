import '../constant/colors.dart';
import 'package:flutter/material.dart';

class BlissButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  const BlissButton({
    Key? key,
    required this.color,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        splashColor: blissblue50,
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 140,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
