import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/features/access_to_dashboard/presentation/Screen/access_to_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentConfirmedScreen extends StatelessWidget {
  const AppointmentConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 44.h,
                      width: 44.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_back,
                          size: 24.sp, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Image.asset(
                IconPath.success,
                height: 117.h,
              ),
              SizedBox(height: 16.h),
              Text(
                'You get 7 days free trial',
                style: getTextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF4A4A4A),
                    lineHeight: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12.h),
              Text(
                'Appointment confirmed',
                style: getTextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  lineHeight: 24,
                  color: Color(0xFF141414),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Lets planning your personalized learning with us.Your lesson plane showed in your dashboard.',
                textAlign: TextAlign.center,
                style: getTextStyle(
                    fontSize: 14.sp,
                    color: Color(0xFF4A4A4A),
                    lineHeight: 21,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFCD522), width: 1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      IconPath.zoom1,
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      'Join with this meeting link',
                      style: getTextStyle(
                        fontSize: 12.sp,
                        lineHeight: 18,
                        color: Color(0xFF1D2939),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Scheduled date and time',
                  style: getTextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1F1F1F),
                    lineHeight: 20,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 58.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xffD0D5DD), width: 1),
                  color: Color(0xFFF9FAFB),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12.w),
                    // Icon(Icons.calendar_today_outlined, color: Colors.amber),
                    SvgPicture.asset(
                      IconPath.calender,
                      height: 20.h,
                      width: 20.w,
                      color: Color(0xFFFCD522),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Text(
                          'Date',
                          style: getTextStyle(
                            color: Color(0xFF999999),
                            lineHeight: 18,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Feb 13-03-2024',
                          style: getTextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1F1F1F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 58.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xffD0D5DD)),
                  color: Color(0xFFF9FAFB),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12.w),
                    // Icon(Icons.access_time, color: Colors.amber),
                    SvgPicture.asset(
                      IconPath.time_3,
                      height: 20.h,
                      width: 20.w,
                      color: Color(0xFFFCD522),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Text(
                          'Time',
                          style: getTextStyle(
                            color: Color(0xFF999999),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            lineHeight: 18,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '7.00am to 10.00am',
                          style: getTextStyle(
                            fontSize: 12.sp,
                            color: Color(0xFF1F1F1F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 65.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFFFFF),
                  side: BorderSide(color: Color(0xFFFCD522), width: 1),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  minimumSize: Size(double.infinity, 48.h),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccessToDashBoard()));
                },
                child: Text(
                  'Access to dashboard',
                  style: getTextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff475467),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFCD522),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  minimumSize: Size(double.infinity, 48.h),
                ),
                onPressed: () {},
                child: Text(
                  'Add to calendar',
                  style: getTextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
