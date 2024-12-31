import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/common/widgets/custom_back_button.dart';
import '../../../../core/common/widgets/selectable_container.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../../../routes/app_routes.dart';
import '../../controllers/question_controller.dart';
import '../widgets/chat_bubble_widget.dart';

class QuestionScreen extends StatelessWidget {
  final questionController = Get.find<QuestionController>();

  QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: 15.w, right: 15.w, top: 16.h, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onTap: () {
                    if (questionController.progress.value > 0) {
                      questionController.updateProgress(
                          questionController.progress.value - 0.34);
                    } else {
                      Get.back();
                    }
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Obx(() => LinearProgressIndicator(
                      minHeight: 20,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      value: questionController.progress.value,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          questionController.getProgressColor()),
                    )),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: 140.h,
                  width: double.infinity,
                  child: Stack(alignment: Alignment.topRight, children: [
                    SizedBox(
                      height: 85.h,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: GetBuilder<QuestionController>(builder: (logic) {
                        return SendCustomBubble(
                          message: logic.questions[logic.currentIndex.value],
                          color: Colors.white,
                          strokWidth: 2,
                          strokColor: AppColors.primary,
                        );
                      }),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            ImagePath.bottomAvatarIcon,
                            height: 65.h,
                          )),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(AppText.selectYourResponse,
                    style: getTextStyle(
                      fontSize: 16.sp,
                      lineHeight: 24,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 16.h,
                ),
                Obx(() {
                  return SelectableContainer(
                    label: questionController.labels,
                    selectedIcon: Icons.check_circle,
                    unselectedIcon: Icons.radio_button_unchecked,
                    isSelected: questionController.selectedItem.value ==
                        questionController.labels,
                    onTap: () {
                      questionController.selectedItem.value =
                          questionController.labels;
                    },
                  );
                }),
                SizedBox(
                  height: 12.h,
                ),
                Obx(() {
                  return SelectableContainer(
                    label: questionController.labels2,
                    selectedIcon: Icons.check_circle,
                    unselectedIcon: Icons.radio_button_unchecked,
                    isSelected: questionController.selectedItem.value ==
                        questionController.labels2,
                    onTap: () {
                      questionController.selectedItem.value =
                          questionController.labels2;
                    },
                  );
                }),
                SizedBox(
                  height: 12.h,
                ),
                Obx(() {
                  return SelectableContainer(
                    label: questionController.labels3,
                    selectedIcon: Icons.check_circle,
                    unselectedIcon: Icons.radio_button_unchecked,
                    isSelected: questionController.selectedItem.value ==
                        questionController.labels3,
                    onTap: () {
                      questionController.selectedItem.value =
                          questionController.labels3;
                    },
                  );
                }),
                const Spacer(),
                CustomButton(
                  buttonTitle: AppText.submit,
                  onTap: () {
                    if (questionController.progress.value < 1.0) {
                      questionController.updateProgress(
                          questionController.progress.value + 0.34);
                      questionController.changeQuestion();
                    } else {
                      Get.toNamed(AppRoute.getAccessToDashBoard());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
