import 'package:flutter/material.dart';


class Tabs extends StatelessWidget {
  final VoidCallback? onpresss;
  final Color? color;
  final IconData? icon;
  final String name;
  final Color? textColor;
  final Color? iconColor;
  const Tabs(
      {super.key,
      this.color,
      required this.onpresss,
      required this.icon,
      required this.name, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpresss,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 25,
            ),
            Text(name ,style: TextStyle(color: textColor),),
          ],
        ),
      ),
    );
  }
}
