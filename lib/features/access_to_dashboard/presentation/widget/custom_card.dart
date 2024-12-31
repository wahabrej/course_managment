import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCard extends StatelessWidget {
  final String level;
  final String name;
  final String expertise;
  final double rating;
  final String image;

  const CustomCard({
    super.key,
    required this.level,
    required this.name,
    required this.expertise,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w,top: 10.h),
      height: 120.h,
      width:163.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),

      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mid level',
                style: getTextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                    lineHeight: 11.86,
                    color: AppColors.levelText),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Adam Williams',
                style: getTextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    lineHeight: 12.83,
                    color: AppColors.textPrimary),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Expert Spoken',
                style: getTextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.sp,
                    lineHeight: 11.86,
                    color: AppColors.levelText),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 10,
                    color: AppColors.levelText,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    '4.5',
                    style: getTextStyle(
                        fontSize: 10.sp,
                        lineHeight: 9.88,
                        fontWeight: FontWeight.w300,
                        color: AppColors.rattingColor),
                  )
                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                children: [
                  Text(
                    AppText.bookNow,
                    style: getTextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        lineHeight: 11.86,
                        color: AppColors.primary),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 15,
                    color: AppColors.primary,
                  )
                ],
              )
            ],
          ),
          Image.asset(
            image,
            height: 82.h,
            width: 47.w,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
