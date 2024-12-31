import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/custom_Botton.dart';
import '../../../../core/common/widgets/selectable_container.dart';
import '../../../../core/utils/constants/image_path.dart';

class LevelBottomSheet extends StatefulWidget {
  const LevelBottomSheet({
    super.key,
  });

  @override
  State<LevelBottomSheet> createState() => _LevelBottomSheetState();
}

class _LevelBottomSheetState extends State<LevelBottomSheet> {
  static String _selectItem = 'item';
  String labels = AppText.beginner;
  String labels2 = AppText.intermediate;
  String labels3 = AppText.advanced;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        ImagePath.cancel,
                        height: 24.h,
                      )),
                ),
                Image.asset(
                  ImagePath.bottomAvatarIcon,
                  height: 66.h,
                  width: 66.w,
                ),
                SizedBox(height: 8.h),
                Text(
                  AppText.englishLevel,
                  textAlign: TextAlign.center,
                  style: getTextStyle(
                    lineHeight: 32,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                SelectableContainer(
                  onTap: () {
                    setState(() {
                      _selectItem = labels;
                    });
                  },
                  isSelected: _selectItem == labels,
                  label: labels,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                ),
                SizedBox(
                  height: 16.h,
                ),
                SelectableContainer(
                  onTap: () {
                    setState(() {
                      _selectItem = labels2;
                    });
                  },
                  isSelected: _selectItem == labels2,
                  label: labels2,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                ),
                SizedBox(
                  height: 16.h,
                ),
                SelectableContainer(
                  onTap: () {
                    setState(() {
                      _selectItem = labels3;
                    });
                  },
                  isSelected: _selectItem == labels3,
                  label: labels3,
                  selectedIcon: Icons.check_circle,
                  unselectedIcon: Icons.radio_button_unchecked,
                ),
               const Spacer(),
                CustomButton(
                    buttonTitle: AppText.submit,
                    onTap: () {
                      Get.offNamed(AppRoute.getQuestionScreen());
                    })
              ],
            ),
          )),
    );
  }
}
