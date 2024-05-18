import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {required this.onPressed,
      required this.text,
      required this.color,
      required this.txtcolor});

  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Color txtcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: txtcolor,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
