import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BadgesSection extends StatelessWidget {
  const BadgesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your badges',
              style: getTextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                lineHeight: 15.81,
                color: AppColors.rattingColor
              )),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BadgeItem(
                  title: 'Fluency Achiever',
                  icon: Image.asset("assets/icons/fluence.png",
                      height: 48.h, width: 48.h)),
              BadgeItem(
                  title: 'Learning Streak Champion',
                  icon: Image.asset("assets/icons/learn.png",
                      height: 48.h, width: 48.h)),
              BadgeItem(
                  title: 'Language Prodigy',
                  icon: Image.asset("assets/icons/language.png",
                      height: 48.h, width: 48.h)),
            ],
          ),
        ],
      ),
    );
  }
}

class BadgeItem extends StatelessWidget {
  final String title;
  final Image icon;

  const BadgeItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100.h,
        width: 110.w,
        child: Column(
          children: [
            icon,
            SizedBox(height: 8.h),
            SizedBox(
              height: 40.h,

              child: Text(
                title,
                textAlign: TextAlign.center,
                style: getTextStyle(
                    color: AppColors.rattingColor,
                    fontSize: 12.sp,
                    lineHeight: 11.86,
                    fontWeight: FontWeight.w300),
                maxLines: 3,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
