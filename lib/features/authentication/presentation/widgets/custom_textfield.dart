import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String titleText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.titleText,
    this.suffixIcon,
    required this.controller,
    this.obscureText, // Nullable in the constructor
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false, // Default to false if null
      validator: validator,
      decoration: InputDecoration(
        hintText: titleText,
        hintStyle: getTextStyle(
          color: const Color(0xff98A2B3),
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: const Color(0xff98A2B3),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color(0xff98A2B3),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffD0D5DD)),
          borderRadius: BorderRadius.circular(8.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffD0D5DD)),
          borderRadius: BorderRadius.circular(8.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffD0D5DD)),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
