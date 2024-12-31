import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoContainer extends StatelessWidget {
  final String name;
  final String designation;

  const UserInfoContainer({
    super.key,
    required this.name,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/access_to_dashboard_avatar1.png',
            height: 40.h,
            width: 40.w,
          ),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: getTextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF344054)),
              ),
              Text(
                designation,
                style: getTextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xFF475467),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
