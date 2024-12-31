import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionItemWidget extends StatelessWidget {
  final String sessionNumber;
  final String sessionTitle;
  final String weekNumber;

  const SessionItemWidget({
    super.key,
    required this.sessionNumber,
    required this.sessionTitle,
    required this.weekNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align session title and week number
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Session $sessionNumber: ',
                style: getTextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  lineHeight: 11,
                  color: const Color(0xFF344054),
                ),
              ),
              TextSpan(
                text: sessionTitle,
                style: getTextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  lineHeight: 11,
                  color: const Color(0xFF475467),
                ),
              ),
            ],
          ),
        ),
        Text(
          'week $weekNumber',
          style: getTextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            lineHeight: 11,
            color: const Color(0xFF344054),
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
