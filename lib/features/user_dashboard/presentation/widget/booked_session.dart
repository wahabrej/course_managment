import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookedSession extends StatelessWidget {
  final String sessionTitle;
  final String time;
  final String instructorName;
  final String instructorTitle;
  final int currentSession;
  final int totalSessions;

  const BookedSession({
    super.key,
    required this.sessionTitle,
    required this.time,
    required this.instructorName,
    required this.instructorTitle,
    required this.currentSession,
    required this.totalSessions,
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
                time,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 113.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.r, vertical: 10.r),
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
                          height: 20.h,
                          width: 20.w,
                        ),
                        Text(
                          AppText.joinNow,
                          textAlign: TextAlign.center,
                          style: getTextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1D2939)),
                        ),
                      ],
                    ),
                  ),
                  // Profile section
                  Row(
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: const CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(ImagePath.profile),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            instructorName,
                            style: getTextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF344054),
                            ),
                          ),
                          Text(
                            instructorTitle,
                            style: getTextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF475467),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
