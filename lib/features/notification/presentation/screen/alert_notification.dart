import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../../../routes/app_routes.dart';

class AlertNotification extends StatelessWidget {
  const AlertNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppText.alertNotificationAppBar,
            style: getTextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              lineHeight: 28,
              color: AppColors.rattingColor,
            )),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h,bottom: 35.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Center(
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
                "Your Free Trial is End!",
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
                "7 of 7",
                style: getTextStyle(
                    color: AppColors.rattingColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 18
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                height: 10.h,
                width: 243.w,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),

              SizedBox(height: 16.h),

              // Subscription Description
              Text(
                "Your 7 days free trial end now. For keep running this lesson You'll be charged \$5 weekly.",
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
        )),
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
                        AppText.backToDashboard,
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
