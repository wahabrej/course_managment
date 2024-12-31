import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EarlierCard extends StatelessWidget {
  final String image;
  final String title;
  final String time;

  const EarlierCard(
      {super.key,
      required this.image,
      required this.title,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () => Get.toNamed(AppRoute.getSubscriptionNotificationScreen()),
        child: Card(
          color: AppColors.white,
          child: ListTile(
            leading: Image.asset(
              image,
              height: 48.h,
              width: 48.w,
            ),
            title: Text(
              title,
              style: getTextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300, lineHeight: 22.96),
            ),
            subtitle: Text(
              time,
              style: getTextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  lineHeight: 19.68,
                  color: AppColors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
