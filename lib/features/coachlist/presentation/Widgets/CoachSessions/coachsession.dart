import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Controller/coachcontroller.dart';
import '../CoachCard/coach_card.dart';
import '../Session_card/MainScreen/session_card.dart';

class CoachSessionWidget extends StatelessWidget {
  CoachSessionWidget({super.key});

  final CoachSessionController controller = Get.put(CoachSessionController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.isPreferredCoachSelected.value
                      ? 'Meet our coaches'
                      : 'Start Speaking Today',
                  style: getTextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    lineHeight: 24,
                    color: const Color(0xff344054),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: controller.toggleTab,
                        child: Container(
                          height: 44.h,
                          decoration: BoxDecoration(
                            color: controller.isPreferredCoachSelected.value
                                ? AppColors.primary
                                : AppColors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                bottomLeft: Radius.circular(4.r)),
                          ),
                          child: Center(
                            child: Text(
                              'Preferred Coach',
                              style: getTextStyle(
                                fontWeight:
                                    controller.isPreferredCoachSelected.value
                                        ? FontWeight.w500
                                        : FontWeight.w300,
                                color: controller.isPreferredCoachSelected.value
                                    ? Colors.black
                                    : const Color(0xff1D2939),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: controller.toggleTab,
                        child: Container(
                          height: 44.h,
                          decoration: BoxDecoration(
                            color: !controller.isPreferredCoachSelected.value
                                ? AppColors.primary
                                : AppColors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4.r),
                                bottomRight: Radius.circular(4.r)),
                          ),
                          child: Center(
                            child: Text(
                              'Preferred Session',
                              style: getTextStyle(
                                fontWeight:
                                    !controller.isPreferredCoachSelected.value
                                        ? FontWeight.w500
                                        : FontWeight.w300,
                                color:
                                    !controller.isPreferredCoachSelected.value
                                        ? Colors.black
                                        : const Color(0xff1D2939),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        SizedBox(height: 16.h),
        Obx(
          () {
            return controller.isPreferredCoachSelected.value
                ? _buildPreferredCoachView()
                : _buildPreferredSessionView();
          },
        ),
      ],
    );
  }

  Widget _buildPreferredCoachView() {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const CoachDetailsContainer();
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 16.h,
        );
      },
    );
  }

  Widget _buildPreferredSessionView() {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,

      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const PreferredSession();
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h);
      },

    );
  }
}
