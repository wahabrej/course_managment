import 'dart:developer';
import 'package:course_online/features/authentication/controllers/user_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../../../core/services/network_caller.dart';
import '../../../core/services/storage_service.dart';
import '../../../core/utils/constants/api_constants.dart';

class LogInController extends GetxController {
  final userSelectionController = Get.find<UserSelectionController>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> logInGlobalKey = GlobalKey<FormState>();
  RxBool isObscuredPass = true.obs;
  RxBool isObscuredConPass = true.obs;

  void toggleObscureTextPass() {
    isObscuredPass.value = !isObscuredPass.value;
  }

  void toggleObscureTextConPass() {
    isObscuredConPass.value = !isObscuredConPass.value;
  }

  void logIn() async {
    if (!(logInGlobalKey.currentState?.validate() ?? false)) {
      return;
    }

    final Map<String, String> requestBody = {
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
    };

    try {
      EasyLoading.show();
      final response = await NetworkCaller().postRequest(AppUrls.login, body: requestBody);
      if (response.isSuccess) {
        String? token = response.responseData['data']['accessToken'];
        String? role = response.responseData['data']['role'];
        if (token != null && role != null  ) {
          await StorageService.saveToken(token,role);
          if(role=='instructor'){
            Get.offAllNamed('/coachNavBar');
          }else{
            Get.offAllNamed('/userNavBar');
          }
        } else {
          log('Login failed: Token is null');
        }
      } else {
        EasyLoading.showInfo('Please check the email address and try again.');
      }
    } catch (e) {
      EasyLoading.showInfo('Please check the Internet and try again.');
    } finally {
      EasyLoading.dismiss();
    }
  }


}
