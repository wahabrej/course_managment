import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/features/notification/presentation/widget/subscription_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../routes/app_routes.dart';

class SubscriptionNotificationScreen extends StatelessWidget {
  const SubscriptionNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.notification,style: getTextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        lineHeight: 28,
        color: AppColors.rattingColor),
        )),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h,bottom: 10.h),
        child: Column(
          children: [
            const SubscriptionNotificationCard(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.getSelectCoach());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.primary,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'Continue Free Trail',
                        style: getTextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomButton(
                      buttonTitle: 'Continue to Subscription', onTap: () {
                    Get.toNamed(AppRoute.getSubscriptionAccepted());
                  })
                ],
              ),
            )

          ],

        ),
      ),
    );

  }
}
