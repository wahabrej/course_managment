import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/custom_button.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/validators/app_validator.dart';
import 'package:course_online/features/authentication/controllers/login_controller.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/widgets/custom_back_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/forgot_password_dialog.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginController = Get.find<LogInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: loginController.logInGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onTap: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    AppText.login,
                    style: getTextStyle(
                        fontSize: 24.sp,
                        lineHeight: 32,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: loginController.emailController,
                    prefixIcon: Icons.email_outlined,
                    titleText: AppText.userEmail,
                    validator: AppValidator.validateEmail,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Obx(
                    () => CustomTextField(
                      controller: loginController.passwordController,
                      prefixIcon: Icons.lock_outline,
                      obscureText: loginController.isObscuredPass.value,
                      titleText: AppText.password,
                      suffixIcon: IconButton(
                        icon: Icon(
                          loginController.isObscuredPass.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                        onPressed: loginController.toggleObscureTextPass,
                      ),
                      validator: AppValidator.validatePassword,
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {

                          showForgotPasswordDialog(context);


                        },
                        child: Text(
                          AppText.forgetPassword,
                          style: getTextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp,
                              lineHeight: 20,
                              color: AppColors.forgetPassword),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomButton(
                    buttonTitle: AppText.login,
                    onTap: loginController.logIn,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: AppText.doNotHaveAnAccount,
                      style: getTextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 14.sp, // Font size
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Get.toNamed(AppRoute.getSignUpScreen()),
                          text: AppText.createNewAccount,
                          style: getTextStyle(
                            color: AppColors.createAccount,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
