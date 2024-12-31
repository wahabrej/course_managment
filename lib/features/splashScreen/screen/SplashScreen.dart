import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../controller/splashController.dart';

class SplashScreen extends StatelessWidget {
  final  splashController = Get.find<SplashController>();

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.logo,
              height: 80.h,
              width: 71.w,
            ),
            SizedBox(
              height: 48.h,
            ),
            Text(
             AppText.loading,
              style: TextStyle(
                fontSize: 48.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
