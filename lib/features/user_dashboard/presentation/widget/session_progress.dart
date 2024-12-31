import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int lessonCount;
  final int progressPercentage;

  const ProgressCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.lessonCount,
    required this.progressPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 12.r, bottom: 12.r, left: 8.r, right: 8.r),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: SizedBox(
                width: 65.w,
                height: 63.h,
                child: Image.asset(
                  imageUrl,
                  width: 65.w,
                  height: 63.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: getTextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF475467)),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 4.r, bottom: 4.r, left: 12.r, right: 12.r),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF2F4F7),
                            borderRadius: BorderRadius.circular(23.r)),
                        child: Text(
                          '${lessonCount < 10 ? '0$lessonCount' : (lessonCount == 10 ? '10' : lessonCount)} lesson${lessonCount != 1 ? 's' : ''}',
                          style: getTextStyle(
                            color: const Color(0xFF344054),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    '${progressPercentage.toStringAsFixed(0)}% completed',
                    style: getTextStyle(
                      color: const Color(0xFF344054),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: LinearProgressIndicator(
                      value: progressPercentage / 100,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                      minHeight: 6,
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
