import 'package:course_online/features/authentication/controllers/user_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../coach_nav_bar/presentation/screens/coach_nav_bar.dart';


class SingUpController extends GetxController {
  final userSelectionController = Get.find<UserSelectionController>();
  final GlobalKey<FormState> createAccountGlobalKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RxBool isObscuredPass = true.obs;
  RxBool isObscuredConPass = true.obs;
  void toggleObscureTextPass() {
    isObscuredPass.value = !isObscuredPass.value;
  }

  void toggleObscureTextConPass() {
    isObscuredConPass.value = !isObscuredConPass.value;
  }

  Future<void> createAccount() async {
    if (userSelectionController.isStudent.value == false) {
      Get.to(() => const CoachNavBar());
    } else {
      Get.toNamed(AppRoute.getLanguageScreen());
    }

    // if (createAccountGlobalKey.currentState?.validate() ?? false) {
    //   return;
    // }

    // Prepare request body for API call
  //   final Map<String, String> requestBody = {
  //     'email': emailController.text.trim(),
  //     'password': passwordController.text.trim(),
  //   };
  //
  //   try {
  //     // Show loading indicator
  //     EasyLoading.show(status: 'Creating account...');
  //
  //     // Call the API
  //     final response = await NetworkCaller().postRequest(AppUrls.createAccount, body: requestBody);
  //
  //     // Handle success response
  //     if (response.isSuccess) {
  //       // Add actions for success scenario (e.g., clear form fields, navigate)
  //       log('Account created successfully');
  //       emailController.clear();
  //       passwordController.clear();
  //     } else {
  //       // Handle failure response
  //       log('Failed to create account: ${response.errorMessage}');
  //     }
  //   } catch (e) {
  //     // Log the error if an exception occurs
  //     log('Exception occurred: ${e.toString()}');
  //   } finally {
  //     // Dismiss loading indicator
  //     EasyLoading.dismiss();
  //   }
  }

}
