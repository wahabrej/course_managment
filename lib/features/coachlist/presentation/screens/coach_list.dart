import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../user_dashboard/presentation/widget/serach_row.dart';
import '../../Controller/coachcontroller.dart';
import '../Widgets/CoachSessions/coachsession.dart';

class CoachList extends StatelessWidget {
  CoachList({super.key});
  final CoachSessionController controller = Get.put(CoachSessionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 98.h,
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 60.h, bottom: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 28.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 100.h),
                    Obx(
                      () => Text(
                        controller.isPreferredCoachSelected.value
                            ? "Coach list"
                            : "Session list",
                        style: getTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          lineHeight: 28,
                          color: const Color(0xff344054), // Text color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchRow(),
                  SizedBox(
                    height: 25.h,
                  ),
                  CoachSessionWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
