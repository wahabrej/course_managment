import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/trems_and_condition_controller.dart';


class TermsAndCondition extends StatelessWidget {
  TermsAndCondition({super.key});
  final termsAndConditionController = Get.find<TermsAndConditionController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric (horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: SizedBox(
                  child: Text(
                    'Terms and Conditions',
                    textAlign: TextAlign.center,
                    style: getTextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      lineHeight: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: 324.w,
                    child: Text(
                      'All content, trademarks, and other intellectual property rights within the app belong to Lasren or our partners. You may not reproduce, distribute, or create derivative works from any of the app content without explicit permission.',
                      style: getTextStyle(),
                    ),
                    // Use Obx to listen to changes in the termsAndPolicy observable
                    // child: Obx(() {
                    //
                    //   if (termsAndConditionController.termsAndPolicy.value.termsConditions != null) {
                    //     return Text(
                    //       termsAndConditionController.termsAndPolicy.value.termsConditions ?? '', // Show terms and conditions
                    //       textAlign: TextAlign.start,
                    //       style: GoogleFonts.poppins(
                    //         fontSize: 16.sp,
                    //         fontWeight: FontWeight.w400,
                    //         height: 22.7.sp / 16.sp,
                    //       ),
                    //     );
                    //
                    //   } else {
                    //     return const SizedBox.shrink();
                    //   }
                    // }),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(buttonTitle: 'Accept', onTap: (){}),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(buttonTitle: 'Cancel', onTap: (){}),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
