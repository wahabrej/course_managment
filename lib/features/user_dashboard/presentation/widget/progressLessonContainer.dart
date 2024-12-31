import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/utils/constants/icon_path.dart';

class ProgressLessonContainer extends StatelessWidget {
  const ProgressLessonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "English fundamentals",
                  style: getTextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF344054)),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Topic: English grammar, Basics of Spoken",
                  style: getTextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff475467),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(width: 40.w),
            CircularPercentIndicator(
              radius: 30.0,
              lineWidth: 6.0,
              percent: 0.7,
              center: Text(
                "70%",
                style: getTextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF344054)),
              ),
              progressColor: Colors.green,
              backgroundColor: Colors.grey.shade300,
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  IconPath.clock,
                  height: 12.h,
                  width: 12.w,
                ),
                SizedBox(width: 4.w),
                Text(
                  "9 sessions total",
                  style: getTextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF667085)),
                ),
                SizedBox(width: 8.w),
                Image.asset(
                  IconPath.timer,
                  height: 12.h,
                  width: 12.w,
                ),
                SizedBox(width: 4.w),
                Text(
                  "9 weeks",
                  style: getTextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF667085)),
                ),
              ],
            ),
            Text(
              "5 of 8 Sessions",
              style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0xff344054),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
