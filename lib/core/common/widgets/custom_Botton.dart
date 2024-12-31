import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Callback onTap;

  final Color? color;

  const CustomButton(
      {super.key,
      required this.buttonTitle,
      required this.onTap,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color:color?? AppColors.primary, borderRadius: BorderRadius.circular(8.r)),
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
