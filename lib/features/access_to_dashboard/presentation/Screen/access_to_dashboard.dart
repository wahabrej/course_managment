import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/features/access_to_dashboard/controllers/coach_controller.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../../../core/utils/constants/static_list.dart';
import '../../../user_nav_bar/presentation/screens/nav_bar.dart';

class AccessToDashBoard extends StatelessWidget {
  AccessToDashBoard({super.key});

  final coachController = Get.find<CoachController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 346.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.accountConfirmContainer,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        ImagePath.accountConfirmAvatar,

                        height: 160.h,
                        width: 140.w,

                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: AppText.account,
                          style: getTextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              lineHeight: 35.h),
                          children: <TextSpan>[
                            TextSpan(
                              text: AppText.successfullyCreated,
                              style: getTextStyle(
                                  color: AppColors.secondary,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  lineHeight: 35.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            ImagePath.accessToDashboardAvatar1,
                            height: 52.h,
                            width: 51.w,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StaticList.coaches[0].name,
                                style: getTextStyle(
                                    fontSize: 14.sp,

                                    lineHeight: 20,
                                    fontWeight: FontWeight.w500),

                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'Email : ${StaticList.coaches[0].email}',
                                style: getTextStyle(
                                    color: const Color(0xFF344054),
                                    fontWeight: FontWeight.w300,

                                    lineHeight: 20,

                                    fontSize: 14.sp),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.buddieSelection,
                    style: getTextStyle(
                        lineHeight: 24,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.rattingColor),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.getSelectCoach());
                      },
                      child: Text(
                        AppText.seeAllButton,
                        style: getTextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height:280.h,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.73 / 0.49),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.r, left: 5.r),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mid level',
                                    style: getTextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12.sp,
                                        lineHeight: 11.86,
                                        color: AppColors.levelText),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    'Adam Williams',
                                    style: getTextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        lineHeight: 13.83,
                                        color: AppColors.textPrimary),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    'Expert Spoken',
                                    style: getTextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12.sp,
                                        lineHeight: 11.86,
                                        color: AppColors.levelText),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 15,
                                        color: AppColors.levelText,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        '4.5',
                                        style: getTextStyle(
                                            fontSize: 10.sp,
                                            lineHeight: 9.88,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.rattingColor),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        AppText.bookNow,
                                        style: getTextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            lineHeight: 11.86,
                                            color: AppColors.primary),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        size: 15,
                                        color: AppColors.primary,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(ImagePath.accessToDashboardAvatar2,
                                  height: 82.h,
                                  width: 45.w,

                                  fit: BoxFit.contain),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 8.h,
                          right: 8.w,
                          child: GestureDetector(
                            onTap: () {
                              // Handle the button action
                            },
                            child: Container(
                              height: 10.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.5,
                                ),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  size: 16.w,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),
              CustomButton(
                buttonTitle: AppText.accessToDashboard,
                onTap: () {
                  Get.to(const UserNavBar());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
