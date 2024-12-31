
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/features/coach_nav_bar/controller/nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CoachNavBar extends StatelessWidget {
  const CoachNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(CoachNavBarController());

    return Scaffold(
      body: Obx(
        () => navController.page[navController.isTab.value],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Container(
          height: 70.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xff2D2D2D),
            borderRadius: BorderRadius.circular(72.r),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff101828).withOpacity(0.06),
                offset: const Offset(0, 2), // X: 0, Y: 2
                blurRadius: 4, // Blur radius
                spreadRadius: -2, // Spread radius
              ),
              BoxShadow(
                color:
                    const Color(0xff101828).withOpacity(0.10), // Another shadow
                offset: const Offset(0, 4), // X: 0, Y: 4
                blurRadius: 8, // Blur radius
                spreadRadius: -2,
              ),
            ],
          ),
          child: Obx(
            () => BottomNavigationBar(
              currentIndex: navController.isTab.value,
              onTap: (value) {
                navController.isTab.value = value;
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 0
                      ? Image.asset(IconPath.homeActive,
                          height: 24.h, width: 24.w)
                      : SvgPicture.asset(
                          IconPath.home,
                          height: 24.h,
                          width: 24.w,
                        ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 1
                      ? SvgPicture.asset(IconPath.listactive,
                          height: 24.h, width: 24.w)
                      : SvgPicture.asset(IconPath.list,
                          height: 24.h, width: 24.w),
                  label: 'list',
                ),
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 2
                      ? SvgPicture.asset(IconPath.lessonlistactive,
                          height: 24.h, width: 24.w)
                      : SvgPicture.asset(IconPath.lessonlist,
                          height: 24.h, width: 24.w),
                  label: 'lesson list',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
