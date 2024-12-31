import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestCard extends StatelessWidget {
  final String name;
  final String lesson;

  const RequestCard({super.key,
    required this.name,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Center(
              child: Image.asset(ImagePath.languageScreenLogo,
                  height: 40.h, width: 40.w, fit: BoxFit.cover)),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: getTextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF475467),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  lesson,
                  style: getTextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF475467),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Container(
            height: 34.h,
            width: 84.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(color: const Color(0xFFEAECF0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.person_outline,
                  size: 18.sp,
                  color: const Color(0xFF667085),
                ),
                Container(
                  width: 1.w,
                  height: 18.h,
                  color: const Color(0xFFD0D5DD),
                ),
                Icon(
                  Icons.check,
                  size: 18.sp,
                  color: const Color(0xFF667085),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
