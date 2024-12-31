import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final RxString errorMessage = ''.obs;

  bool _isValidEmail(String email){
    return email.isNotEmpty && GetUtils.isEmail(email);
  }

  Future<void> forgotPassword()async{
    String email=emailController.text.trim();
    if(!_isValidEmail(email)){
      errorMessage.value = 'Please enter a valid email address';
      return;
    }
    errorMessage.value = '';

   Get.offAllNamed(AppRoute.otpVerification);
    // EasyLoading.show(status: "Loading...");
    // try {
    //   final Map<String, String> requestBody = {
    //     'email': email,
    //   };
    //   // Send reset email via network request
    //   final response = await NetworkCaller().postRequest(Urls.sendEmail,body: requestBody);
    //
    //   // Handle response success
    //   if (response.isSuccess) {
    //     Get.offAll(OtpVerificationScreen(email: email,));
    //
    //   } else {
    //     EasyLoading.showError('Failed to send reset email. Please try again.');
    //   }
    // } catch (error) {
    //   EasyLoading.showError('An error occurred. Please try again later.');
    //
    // } finally {
    //   EasyLoading.dismiss();
    // }
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}