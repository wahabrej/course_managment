import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Button.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/forgot_password_controller.dart';

void showForgotPasswordDialog(BuildContext context) {
  final ForgotPasswordController controller = Get.put(ForgotPasswordController());
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        content: SizedBox(
          width: 320.w,
          height: 280.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Center(

                child: Text(
                  'Reset Password',
                  style: getTextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    lineHeight: 32.sp / 24.sp,
                    color: AppColors.primary,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Please enter your email address below to receive OTP',
                style: getTextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,

                ),

              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 45.h,
                width: double.infinity,
                child: TextField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (_) {
                    controller.errorMessage.value = '';
                  },
                  style: getTextStyle(
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.white,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 12.h, horizontal: 15.w),
                    hintText: 'Enter your email address',
                    hintStyle: getTextStyle(
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Obx(
                    () => controller.errorMessage.isNotEmpty
                    ? Text(
                  controller.errorMessage.value,
                  style: getTextStyle(
                    fontSize: 12.sp,
                    color: Colors.red,
                  ),
                )
                    : const SizedBox.shrink(),
              ),
              SizedBox(height: 30.h),
              Center(
                child: CustomButton(
                  buttonTitle: 'Send',
                  onTap: controller.forgotPassword,

                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
