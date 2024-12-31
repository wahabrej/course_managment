import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Button.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/features/coach_dashboard/pressentation/screen/lesson_and_sesson_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../Appointment/presentation/screens/appointment.dart';

class CoachProfile extends StatelessWidget {
  CoachProfile({super.key});
  final List<Map<String, String>> gridData = [
    {"value": "188+", "label": "Student coaching"},
    {"value": "98%", "label": "Engagements"},
    {"value": "88", "label": "Total session"},
    {"value": "#2", "label": "Popularity"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAppointmentDetails(context),
                      SizedBox(height: 24.h),
                      Text(
                        'Working experience',
                        style: getTextStyle(
                            fontWeight: FontWeight.w500,
                            lineHeight: 20,
                            fontSize: 16.sp,
                            color: const Color(0xff101828)),
                      ),
                      SizedBox(height: 12.h),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.6,
                          crossAxisSpacing: 18.w,
                          mainAxisSpacing: 16.h,
                        ),
                        itemCount: gridData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 107.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  gridData[index]["value"]!,
                                  style: getTextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 20,
                                  ),
                                ),
                                Text(
                                  gridData[index]["label"]!,
                                  style: getTextStyle(
                                      color: const Color(0xff344054),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      lineHeight: 20),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
              child: CustomButton(
                  buttonTitle: 'Take Appointment',
                  onTap: () {
                    Get.to(() => AppointmentScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppointmentDetails(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      color: AppColors.containerColor.withOpacity(.2),
                      border: Border.all(color: AppColors.primary, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                      child: Image.asset(
                        ImagePath.cardImage,
                        height: 100.h,
                        width: 90.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  flex: 4,
                  child: _buildDoctorDetails(),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            _buildAdditionalInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Adam Williams',
            style: getTextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF344054),
                lineHeight: 19.55)),
        SizedBox(height: 8.h),
        Text(AppText.specialized,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                lineHeight: 18,
                color: const Color(0xFF667085))),
        SizedBox(height: 4.h),
        Text(AppText.englishSpoken,
            style: getTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                lineHeight: 20,
                color: const Color(0xFF475467))),
        SizedBox(height: 8.h),
        Text(AppText.experience,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                lineHeight: 18,
                color: const Color(0xFF667085))),
        SizedBox(height: 4.h),
        Text('2 years',
            style: getTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                lineHeight: 20,
                color: const Color(0xFF475467))),
        SizedBox(height: 4.h),
        Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.primary,
                  size: 14.sp,
                ),
                Text(
                  '4.5',
                  style: getTextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      lineHeight: 18,
                      color: const Color(0xFF344054)),
                ),
              ],
            )),
      ],
    );
  }

  Widget _buildAdditionalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppText.bio,
                style: getTextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    lineHeight: 20,
                    color: const Color(0xFF1D2939))),
            GestureDetector(
              onTap: () {
                // See lesson buttion ==============
              },
              child: GestureDetector(
                onTap: (){
                  Get.to(()=> LessonAndSessionListScreen());
                },
                child: Column(

                  children: [
                    Text(
                      'See Lesson',
                      style: getTextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        lineHeight: 14,
                      ),
                    ),
                    Container(
                      width: 75.w,
                      height: 1.h,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 16.h),
        Text(AppText.bioTittle,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0xFF475467),
                lineHeight: 18)),
        SizedBox(height: 16.h),
        Text(AppText.socialMedia,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1D2939),
                lineHeight: 18)),
        SizedBox(height: 12.h),
        Row(
          children: [
            SvgPicture.asset(
              IconPath.linkdin,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.twitter,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.facebook,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.instrageram,
              height: 18.h,
              width: 18.w,
            ),
          ],
        )
      ],
    );
  }
}
