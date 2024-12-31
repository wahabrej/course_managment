import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../controllers/select_coach_controller.dart';

class SelectCoach extends StatelessWidget {
  SelectCoach({super.key});

  final SelectCoachController controller = Get.put(SelectCoachController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.selectCoachAppBar,
          style: getTextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
            lineHeight: 28,
            color: AppColors.rattingColor,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.selectCoachScaffoldHeader,
              style: getTextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                lineHeight: 15.81,
                color: AppColors.rattingColor,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
                child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  controller.updateSelectedIndex(index);
                },
                child: Obx(
                  () {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                      height: 105.h,
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == index
                            ? Colors.white
                            : Colors.grey.shade200,
                        border: Border.all(
                          color: controller.selectedIndex.value == index
                              ? AppColors.primary
                              : AppColors.textSecondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expert Spoken',
                                style: getTextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10.sp,
                                  lineHeight: 9.88,
                                  color: AppColors.levelText,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'Adam Williams',
                                style: getTextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  lineHeight: 13.83,
                                  color: AppColors.rattingColor,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'Lesson: Fundamentals of ENG',
                                style: getTextStyle(
                                  fontSize: 12.sp,
                                  lineHeight: 11.86,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xff475467),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: '100/',
                                      style: getTextStyle(
                                        color: AppColors.textPrimary,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 11.86,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' token for this coach',
                                          style: getTextStyle(
                                            color: AppColors.levelText,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300,
                                            lineHeight: 11.86,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 19.sp,
                                        color: AppColors.levelText,
                                      ),
                                      SizedBox(width: 1.w),
                                      Text(
                                        '4.5',
                                        style: getTextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10.sp,
                                          lineHeight: 9.88,
                                          color: AppColors.rattingColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 22.w),
                          Image.asset(
                            ImagePath.accessToDashboardAvatar2,
                            height: 82.h,
                            width: 54.w,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 18.w),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              controller.selectedIndex.value == index
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: controller.selectedIndex.value == index
                                  ? AppColors.primary
                                  : Colors.grey[400],
                              size: 17,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 16.h,
              ),
              itemCount: 9,
            )),
            CustomButton(
                buttonTitle: 'Take an appointment',
                onTap: () {
                  Get.toNamed(AppRoute.getAppointmentScreen());
                })
          ],
        ),
      ),
    );
  }
}
