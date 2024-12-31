import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/common/widgets/custom_button.dart';
import 'package:course_online/features/authentication/controllers/signup_controller.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/custom_back_button.dart';
import '../../../../core/utils/validators/app_validator.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final signUpController = Get.find<SingUpController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: signUpController.createAccountGlobalKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onTap: () => Get.back(),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  AppText.createYourAccount,
                  style: getTextStyle(
                      fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  prefixIcon: Icons.person_outline,
                  titleText: AppText.fullName,
                  controller: signUpController.nameController,
                  validator: AppValidator.validateFullName,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextField(
                    controller: signUpController.emailController,
                    prefixIcon: Icons.email_outlined,
                    titleText: AppText.userEmail,
                    validator: AppValidator.validateEmail),
                SizedBox(
                  height: 16.h,
                ),
                Obx(
                  () => CustomTextField(
                    controller: signUpController.passwordController,
                    prefixIcon: Icons.lock_outline,
                    obscureText: signUpController.isObscuredPass.value,
                    titleText: AppText.password,
                    suffixIcon: IconButton(
                      icon: Icon(
                        signUpController.isObscuredPass.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                      onPressed: signUpController.toggleObscureTextPass,
                    ),
                    validator: AppValidator.validatePassword,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Obx(
                  () => CustomTextField(
                    controller: signUpController.confirmPasswordController,
                    prefixIcon: Icons.lock_outline,
                    obscureText: signUpController.isObscuredConPass.value,
                    titleText: AppText.confirmPassword,
                    suffixIcon: IconButton(
                      icon: Icon(
                        signUpController.isObscuredConPass.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                      onPressed: signUpController.toggleObscureTextConPass,
                    ),
                    validator: (value) => AppValidator.validateConfirmPassword(
                        signUpController.passwordController.text, value),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                  buttonTitle: AppText.createAccount,
                  onTap: signUpController.createAccount,
                ),
                SizedBox(
                  height: 32  .h,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.getTermsAndConditionScreen());
                  },
                  child: RichText(
                    text: TextSpan(
                      style:  getTextStyle(
                        fontSize: 14,
                          lineHeight: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff344054)), // Default text style
                      children: [
                        const TextSpan(
                          text: AppText.bySignUpYouAgreeToYour,
                        ),
                        TextSpan(
                          text: AppText.termsCondition,
                          style:getTextStyle(
                            fontSize: 14,
                            lineHeight: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff007BFF)),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Get.toNamed(AppRoute.getTermsAndConditionScreen());
                          },
                        ),
                         TextSpan(
                          text: AppText.andPrivacyPolicy,
                             style:  getTextStyle(
                                 fontSize: 14,
                                 lineHeight: 20,
                                 fontWeight: FontWeight.w400,
                                 color:const Color(0xff344054))
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
