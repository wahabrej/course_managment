import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavigationButton extends StatelessWidget {
  final VoidCallback onTap;
  final Icon? icon;
   const CustomNavigationButton({super.key, required this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 44.h,
        width: 44.w,
        decoration: BoxDecoration(
          color: AppColors.accountConfirmContainer,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Center(
          child: icon ??
              Icon(
                Icons.arrow_back,
                size: 24.sp,
                color: AppColors.backgroundDark,
              ),
        ),
      ),
    );
  }
}
