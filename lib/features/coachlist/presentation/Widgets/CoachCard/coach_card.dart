import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/features/coach_profile/presentation/screens/coach_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CoachDetailsContainer extends StatelessWidget {
  const CoachDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w), // Use w for padding
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/access_to_dashboard_avatar1.png',
                    height: 48.h,
                    width: 48.w,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Adam Williams',
                              style: getTextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  lineHeight: 14,
                                  color: const Color(0xff344054)),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.primary,
                                  size: 18.sp,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '4.5',
                                  style: getTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black54,
                                      lineHeight: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Fundamentals ENG',
                        style: getTextStyle(
                          fontSize: 12.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 11.h), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '100/',
                            style: getTextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                lineHeight: 24),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            'token for this coach',
                            style: getTextStyle(color: const Color(0xff475467)),
                          ),
                        ],
                      )

                      // Entry level (optional)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Your button action here
                    },
                    child: Text(
                      'Entry level',
                      style: getTextStyle(
                        lineHeight: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff344054), // Text color
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(CoachProfile());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8.r), // Rounded corners
                    ),
                    child: Text(
                      'Profile',
                      style: getTextStyle(),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
