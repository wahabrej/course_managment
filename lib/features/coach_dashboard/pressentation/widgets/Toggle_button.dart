import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/features/coach_dashboard/controller/lesson_and_session_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ToggleButton extends StatelessWidget {


   ToggleButton({super.key});
   final LessonCreationController controller =
   Get.put(LessonCreationController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: controller.selectLessonCreation,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: controller.isLessonSelected.value
                            ? AppColors.primary
                            : Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          'Lesson creation',
                          style: getTextStyle(
                            fontSize: 14.sp,
                            fontWeight:
                                controller.isLessonSelected.value
                                    ? FontWeight.w500
                                    : FontWeight.w300,
                            color:
                                controller.isLessonSelected.value
                                    ? Colors.black
                                    : const Color(0xFF1D2939),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: controller.selectSessionCreation,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: !controller.isLessonSelected.value
                            ? AppColors.primary
                            : Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          'Session creation',
                          style: getTextStyle(
                            fontSize: 14.sp,
                            fontWeight:
                                !controller.isLessonSelected.value
                                    ? FontWeight.w500
                                    : FontWeight.w300,
                            color:
                                !controller.isLessonSelected.value
                                    ? Colors.black
                                    : const Color(0xFF1D2939),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            // Conditional content based on selection
            // controller.isPreferredCoachSelected.value
            //     ? buildLessonCreationContent()
            //     : buildEmptySessionCreationContent(),
          ],
        )),
      ],
    );
  }
}
