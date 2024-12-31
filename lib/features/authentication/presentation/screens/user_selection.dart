import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/features/authentication/controllers/user_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class UserSelection extends StatelessWidget {
  UserSelection({super.key});
  final userSelectionController = Get.find<UserSelectionController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 120.h,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Image.asset(
                  ImagePath.userRoleImage,
                  height: 387.h,
                  width: 335.w,
                )),
            SizedBox(
              height: 96.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: userSelectionController.navigatorToCoach,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.primary,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'Continue as a coach',
                        style: getTextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomButton(

                      buttonTitle: 'Continue as a student',
                      onTap: userSelectionController.navigatorToStudent)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
