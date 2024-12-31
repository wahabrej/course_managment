import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final String text;
  final VoidCallback onPressed;

  const CoachButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Button width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // 8px border radius
          ),
          padding: EdgeInsets.zero, // Remove default padding
        ),
        child: Center(
          child: Text(
            text, // Button text
            style: TextStyle(
              color: textColor, // Text color
              fontSize: 12.sp, // Font size using ScreenUtil
            ),
          ),
        ),
      ),
    );
  }
}
