import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.buttonTextColor,
    this.buttonBgColor,
    required this.icon,
  });

  final String label;
  final VoidCallback onPressed;
  final Color? buttonTextColor;
  final Color? buttonBgColor;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBgColor,
        foregroundColor: buttonTextColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 20, height: 20, child: icon),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );

    
    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     SizedBox(
    //       width: 20,
    //       height: 20,
    //        child: icon,
    //     )
    //     const SizedBox(width: 8,),
    //     Flexible(child: Text(label, style: TextStyle(fontSize: 20), overflow: TextOverflow.ellipsis,)),
    //     ElevatedButton(
    //       onPressed: onPressed,
    // style: ElevatedButton.styleFrom(
    //   backgroundColor: buttonBgColor,
    //   foregroundColor: buttonTextColor,
    // ),

    //     ),
    //   ],
    // );
  }
}
