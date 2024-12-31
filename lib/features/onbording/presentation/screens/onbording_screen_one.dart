import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_back_botton.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_bording_screen_controller.dart';


class OnBordIngScreen extends StatelessWidget {
  OnBordIngScreen({super.key});
  final onboardingController =
      Get.find<OnBordIngScreenController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: onboardingController.pageController,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: AppColors.accent,
                    child: Column(
                      children: [
                        SizedBox(height: 28.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: Image.asset(
                            ImagePath.onBordIngOne,
                            height: 295.h,
                          ),
                        ),
                        SizedBox(height: 48.h),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(121.r),
                                bottomLeft: Radius.circular(120.r),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 56.h, left: 16.w, right: 16.w),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Step forward your Personalized learning !',
                                      style: getTextStyle(
                                        lineHeight: 35,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff1D2939),
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Text(
                                      'Get matched with a dedicated Buddie to support your personalized language learning. Start your journey today and unlock your full potential!',
                                      style: getTextStyle(
                                        lineHeight: 28,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0xff344054),
                                      ),
                                    ),
                                    SizedBox(height: 60.h),
                                    SizedBox(
                                      height: 48.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              onboardingController
                                                  .pageController
                                                  .nextPage(
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.easeInOut);
                                            },
                                            child: Text(
                                              'Skip',
                                              style: getTextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Center(
                                            child: SmoothPageIndicator(
                                              controller: onboardingController
                                                  .pageController,
                                              count: 2,
                                              effect: const SlideEffect(
                                                  paintStyle:
                                                      PaintingStyle.stroke,
                                                  strokeWidth: 1,
                                                  dotColor: Color(0xffBBBBBB),
                                                  activeDotColor: Colors.white),
                                              onDotClicked: (index)=>onboardingController.pageController.animateToPage(
                                                index,
                                                duration:const  Duration(milliseconds: 500),
                                                curve: Curves.easeIn
                                              )

                                            ),
                                          ),
                                          CustomNavigationButton(
                                            onTap: () {
                                              onboardingController
                                                  .pageController
                                                  .nextPage(
                                                      duration: const Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.easeInOut);
                                            },
                                            icon:
                                                const Icon(Icons.arrow_forward),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: AppColors.accent,
                    child: Column(
                      children: [
                        SizedBox(height: 32.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: RichText(
                            text: TextSpan(
                              text: 'Welcome to ',
                              style: getTextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                  lineHeight: 38,
                                  color: const Color(0xff0A0A09)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '(App name)',
                                  style: getTextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w800,
                                      lineHeight: 38,
                                      color: AppColors.primary),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 48.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Image.asset(
                            ImagePath.onBordIngTow,
                            height: 337.h,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2000.r),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 100.h,
                                left: 87.w,
                                right: 16.w,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hello!',
                                    style: getTextStyle(
                                      lineHeight: 20,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff344054),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    'Get paired with a dedicated Buddie to guide your language journey',
                                    style: getTextStyle(
                                      lineHeight: 20,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xff344054),
                                    ),
                                  ),
                                  SizedBox(height: 40.h,),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: CustomNavigationButton(
                                      onTap: () {
                                        // Get.offNamed(AppRoute.getLoginScreen());
                                        Get.toNamed(AppRoute.getUserSelectionScreen());
                                      },
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
