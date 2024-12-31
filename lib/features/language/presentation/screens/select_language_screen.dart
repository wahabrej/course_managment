import 'package:course_online/core/common/widgets/custom_back_button.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_texts.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../controllers/language_controller.dart';
import '../../../../core/common/widgets/selectable_container.dart';



class SelectLanguageScreen extends StatelessWidget {
  final LanguageController controller = Get.put(LanguageController());

   SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String label1 = AppText.english;
    String label2 = AppText.spanish;
    String label3 = AppText.french;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(onTap: () {
                Get.back();
              }),
              SizedBox(height: 29.h),
              Center(child: Image.asset(ImagePath.languageScreenLogo, height: 66.h, width: 66.w, fit: BoxFit.cover)),
              SizedBox(height: 8.h),
              Center(child: Text(AppText.chooseYourLanguage, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500))),
              SizedBox(height: 24.h),

              Obx(() {
                return SelectableContainer(
                  label: label1,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                  isSelected: controller.selectedItem.value == label1,
                  onTap: () {
                    controller.updateSelectedItem(label1);
                  },
                );
              }),
              SizedBox(height: 16.h),

              Obx(() {
                return SelectableContainer(
                  label: label2,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                  isSelected: controller.selectedItem.value == label2,
                  onTap: () {
                    controller.updateSelectedItem(label2);
                  },
                );
              }),
              SizedBox(height: 16.h),

              Obx(() {
                return SelectableContainer(
                  label: label3,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                  isSelected: controller.selectedItem.value == label3,
                  onTap: () {
                    controller.updateSelectedItem(label3);
                  },
                );
              }),

              const Spacer(),

              CustomButton(
                buttonTitle: AppText.continueButton,
                onTap: () {
                 Get.toNamed(AppRoute.getAssessLevelScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


