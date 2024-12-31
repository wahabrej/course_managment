import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingSession extends StatelessWidget {
  final String sessionTitle;
  final String upcomingTime;
  final String instructorName;
  final String instructorTitle;
  final int currentSession;
  final int totalSessions;
  final int additionalProfilesCount;

  const UpcomingSession({
    super.key,
    required this.sessionTitle,
    required this.upcomingTime,
    required this.instructorName,
    required this.instructorTitle,
    required this.currentSession,
    required this.totalSessions,
    required this.additionalProfilesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    '$currentSession of $totalSessions',
                    style: getTextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF009F00)),
                  ),
                ],
              ),
              Text(
                upcomingTime,
                style: getTextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF667085),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              Text(
                sessionTitle,
                style: getTextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF475467),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                AppText.spokenEnglish,
                style: getTextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF667085)),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 28.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 28.h,
                      width: 93.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.r, vertical: 5.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: const Color(0xFFFCD522),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            IconPath.zoom,
                            height: 16.h,
                            width: 16.w,
                          ),
                          Text(
                            AppText.joinNow,
                            textAlign: TextAlign.center,
                            style: getTextStyle(
                                fontSize: 12.sp,
                                lineHeight: 18,
                                fontWeight: FontWeight.w300,
                                color: const Color(0xFF475467)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      height: 28.h,
                      width: 120.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: const Color(0xFFD0D5DD),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(IconPath.frame,
                                height: 16.h, width: 16.w),
                            SizedBox(
                              height: 18.h,
                              child: Text(
                                'Re-schedule',
                                style: getTextStyle(
                                    fontSize: 12.sp,
                                    lineHeight: 18,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFF475467)),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w, top: 5, bottom: 5),
                      child: SizedBox(
                        width: 60.w,
                        height: 18.h,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 18.h,
                              width: 18.w,

                              child: Image.asset(ImagePath.users,height: 9.h,width: 13.63.w,color: const Color(0xff000000),),
                            ),
                            SizedBox(width: 4.w,),
                            Text('120+',style: getTextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              lineHeight: 18,
                              color: const Color(0xff475467)
                            ),)
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
