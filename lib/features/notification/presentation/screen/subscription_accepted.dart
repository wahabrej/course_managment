import 'package:course_online/core/common/widgets/Custom_back_botton.dart';
import 'package:course_online/features/notification/presentation/widget/subscription_accepted_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../routes/app_routes.dart';

class SubscriptionAccepted extends StatelessWidget {
  const SubscriptionAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 16.h,bottom: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomNavigationButton(onTap: ()=>Get.back()),
              SizedBox(height: 20.h,),
              const SubscriptionAcceptedCard(),
               const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
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
                          'Go to dashboard',
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

                        buttonTitle: 'View tokens', onTap: () {
                      Get.offNamed(AppRoute.getLoginScreen());
                    })
                  ],
                ),
              )

            ],

          ),
        ),
      ),
    );
  }
}
