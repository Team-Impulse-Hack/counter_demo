import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.buttonTextColor,
    this.buttonBgColor,
  });

  final String label;
  final VoidCallback onPressed;
  final Color? buttonTextColor;
  final Color? buttonBgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBgColor,
        foregroundColor: buttonTextColor,
      ),
      child: Text(label, style: TextStyle(fontSize: 20)),
    );
  }
}
