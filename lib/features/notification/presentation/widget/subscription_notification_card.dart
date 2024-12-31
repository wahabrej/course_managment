import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionNotificationCard extends StatelessWidget {
  const SubscriptionNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 238.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),

      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.h,),
          Image.asset(ImagePath.warningImage,height: 48.h,width: 48.w,),

           SizedBox(height: 24.h),

          // Main Heading Text
          Text(
            "Your Free Trial is Ending Soon!",
            textAlign: TextAlign.center,
            style: getTextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,   
              lineHeight: 20,
              color: AppColors.subscriptionNotificationHeader
            ),
          ),
           SizedBox(height: 12.h),

          Text(
            "3 of 7",
            style: getTextStyle(
              color: AppColors.rattingColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              lineHeight: 18
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProgressDot(isActive: true),
              _buildProgressDot(isActive: true),
              _buildProgressDot(isActive: true),
              _buildProgressDot(isActive: false),
              _buildProgressDot(isActive: false),
              _buildProgressDot(isActive: false),
              _buildProgressDot(isActive: false),
            ],
          ),
           SizedBox(height: 16.h),

          // Subscription Description
          Text(
            "As a subscriber, you'll receive 20 tokens every week to unlock special rewards and sessions",
            textAlign: TextAlign.center,
            style: getTextStyle(
              color: AppColors.subscriptionNotificationHeader,
              fontSize: 14.0,
              lineHeight: 21,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildProgressDot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 10.0,
      width: 30.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
