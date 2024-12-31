import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarnMoreTokenSection extends StatelessWidget {
  const EarnMoreTokenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Earn more token",
              style: getTextStyle(
                fontSize: 16.sp,
                lineHeight: 15.81,
                fontWeight: FontWeight.w500,
                color: const Color(0xff344054),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/clock.png",
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '12 August 2024',
                    style: getTextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      lineHeight: 20,
                      color: const Color(0xff344054),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        const TokenTaskItem(),
        const TokenTaskItem(),
        const TokenTaskItem(),
      ],
    );
  }
}

class TokenTaskItem extends StatelessWidget {
  const TokenTaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      height: 64.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 3.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Completing a session earn 10 tokens',
                style: getTextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: const Color(0xff475467),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Lesson: Fundamentals ENG',
                style: getTextStyle(
                  fontSize: 11.sp,
                  lineHeight: 20,
                  color: const Color(0xff475467),
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xffFCD522),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Claim',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          )
        ],
      ),
    );
  }
}
