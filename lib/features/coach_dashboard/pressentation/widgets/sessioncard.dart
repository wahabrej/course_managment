import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SessionCard extends StatelessWidget {
  final String sessionTitle;
  final String sessionCount;
  final String description;

  const   SessionCard({
    super.key,
    required this.sessionTitle,
    required this.sessionCount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.h,
      width: 165.w,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset(
              ImagePath.color,
              height: 40.h,
              width: 35.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 15.78.h,right: 25.17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sessionTitle,
                  style: getTextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w300,
                    lineHeight: 11.83,
                    color: const Color(0xFF1D2939),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  sessionCount,
                  style: getTextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    lineHeight: 22.47,
                    color: const Color(0xFF101828),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  description,
                  style: getTextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    lineHeight: 11.83,
                    color: const Color(0xFF475467),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
