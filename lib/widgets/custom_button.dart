import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor, buttonColor;
  final IconData? icon;
  final IconAlignment? iconAlignment;
  final double width, height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.buttonColor,
    required this.width,
    required this.height,
    this.icon,
    this.iconAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(width, height),
      ),
      onPressed: onPressed,
      iconAlignment: iconAlignment ?? IconAlignment.start,
      icon: Icon(
        icon,
        color: textColor,
      ),
      label: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
