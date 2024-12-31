
import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/features/payment/presentation/screens/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class TokenCard extends StatelessWidget {
  const TokenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 208.h,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Image.asset("assets/icons/coin.png",
                        height: 24.h, width: 24.w),
                    SizedBox(width: 8.w),
                    Text(
                      '100 TOKENS',
                      style: getTextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        lineHeight: 15.81,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: 120.w,
                    ),
                    TextButton(
                      onPressed: () {
                      Get.to(()=>const PaymentMethod());
                      },
                      child: Text(
                        'Shop',
                        style: getTextStyle(
                            color: const Color(0xffC8A402),
                            lineHeight: 20,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 40.h,
          left: 0.w,
          right: 0.w,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Image.asset(
                  "assets/icons/wallet_profile.png",
                  height: 75.h,
                  width: 75.w,
                ),
                SizedBox(height: 16.h),
                Text(
                  'Adam Williams',
                  style: getTextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      lineHeight: 18,
                      color: const Color(0xff475467)),
                ),
                SizedBox(height: 4.h),
                Text(
                  'User since: 20 Jan 2021',
                  style: getTextStyle(
                    fontSize: 12.sp,
                    lineHeight: 11.86,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff797D91),
                  ),
                ),
                SizedBox(height: 8.h),
                RichText(
                  text: TextSpan(
                    text: '12 ',
                    style: getTextStyle(
                        fontSize: 12.sp,
                        lineHeight: 11.86,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff344054)),
                    children: [
                      TextSpan(
                        text: 'completed lessons',
                        style: getTextStyle(
                            fontSize: 12.sp,
                            lineHeight: 11.86,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff475467)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


