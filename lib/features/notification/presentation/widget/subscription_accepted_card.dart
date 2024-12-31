import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/image_path.dart';

class SubscriptionAcceptedCard extends StatelessWidget {
  const SubscriptionAcceptedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 339.57.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),

          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.h,),
              Image.asset(ImagePath.subscriptionAccepted,height: 120.h,width: 121.w,),

              SizedBox(height: 20.h),

              // Main Heading Text
              Text(
                "Congratulations",
                textAlign: TextAlign.center,
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    lineHeight: 14,
                    color: AppColors.subscriptionNotificationHeader
                ),
              ),
              SizedBox(height: 12.h),

              Text(
                "Subscription Activated",
                style: getTextStyle(
                    color: AppColors.subscriptionActivated,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    lineHeight: 24
                ),
              ),
              SizedBox(height: 12.h),


              // Subscription Description
              Text(
                "Thank you for subscribing! You will be charged \$5 every week and receive 20 tokens to use for exclusive content and rewards.",
                textAlign: TextAlign.center,
                style: getTextStyle(
                    color: AppColors.subscriptionNotificationHeader,
                    fontSize: 14.0,
                    lineHeight: 21,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                "Your next payment will be on [12/05/2024]",
                textAlign: TextAlign.center,
                style: getTextStyle(
                    color: AppColors.subscriptionNotificationHeader,
                    fontSize: 12.0,
                    lineHeight: 18,
                    fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ));
  }
}
