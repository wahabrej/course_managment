import 'package:course_online/features/user_dashboard/presentation/Screen/user_dash_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/utils/constants/app_texts.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/image_path.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.successImage,
              height: 100.h,
              width: 100.w,
            ),
            SizedBox(
              height: 16.h,
            ),
            const Text(AppText.youBookingIsSuccessfully,
                textAlign: TextAlign.center, style: TextStyle()),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppText.yourBookingIsBeingProcessed,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.sp, color: AppColors.subTittle),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(buttonTitle: AppText.backToDashboard, onTap: () {
             Get.to(()=>UserDashboard());
            })
          ],
        ),
      ),
    );
  }
}
