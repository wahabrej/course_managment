import 'package:course_online/core/common/widgets/custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/widgets/custom_back_botton.dart';
import '../widgets/botton_sheet_bar.dart';

class AssessLevelScreen extends StatelessWidget {
  const AssessLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16.h, left: 20.w, right: 20.w,bottom: 20.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CustomNavigationButton(
                  onTap: () => Get.back(),
                ),
              ),
              SizedBox(height: 100.h,),
              Column(
                children: [
                  Image.asset(ImagePath.avatar2),
                  Image.asset(ImagePath.avatar1),
                ],
              ),
              const Spacer(),
              CustomButton(
                  buttonTitle: AppText.continueButton,
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints.tight(Size(
                          MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height * .7)),
                      isDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return const LevelBottomSheet();
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
