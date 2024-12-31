import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/Custom_Botton.dart';
import '../../../../core/utils/constants/app_texts.dart';

import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../../../routes/app_routes.dart';
import '../../controllers/paymentController.dart';

class PaymentCardScreen extends StatelessWidget {
  final tokenListController = Get.find<TokenListController>();

  PaymentCardScreen({super.key});

  final List<String> cardIcon = [
    ImagePath.masterCard,
    ImagePath.paypal,
    ImagePath.applePay,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card type',
          style: getTextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              lineHeight: 28,
              color: AppColors.headerTextColor),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Image.asset(
                  ImagePath.masterCard,
                  height: 28.h,
                  width: 29.w,
                ),
                title: Text(
                  AppText.masterCard,
                  style: getTextStyle(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  onPressed: () {
                    tokenListController.toggleSelection(1);
                  },
                  icon: Icon(
                    tokenListController.isSelectedList[0]
                        ? Icons.radio_button_checked_outlined
                        : Icons.radio_button_unchecked,
                    size: 20,
                  ),
                  color: tokenListController.isSelectedList[0]
                      ? AppColors.primary
                      : Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 16.h),

            // Card Option 2
            Container(
              height: 54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Image.asset(
                  ImagePath.paypal,
                  height: 28.h,
                  width: 29.w,
                ),
                title: Text(
                  AppText.paypel,
                  style: getTextStyle(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  onPressed: () {
                    tokenListController.toggleSelection(1);
                  },
                  icon: Icon(
                    tokenListController.isSelectedList[1]
                        ? Icons.radio_button_checked_outlined
                        : Icons.radio_button_unchecked,
                  ),
                  color: tokenListController.isSelectedList[1]
                      ? AppColors.primary
                      : Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              height: 54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Image.asset(
                  ImagePath.applePay,
                  height: 28.h,
                  width: 29.w,
                ),
                title: Text(
                  AppText.applaypay,
                  style: getTextStyle(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                trailing: IconButton(
                  onPressed: () {
                    tokenListController.toggleSelection(1);
                  },
                  icon: Icon(
                    tokenListController.isSelectedList[0]
                        ? Icons.radio_button_checked_outlined
                        : Icons.radio_button_unchecked,
                  ),
                  color: tokenListController.isSelectedList[0]
                      ? AppColors.primary
                      : Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 20.w),
              child: Text(
                "You need to add a card for getting 7 days free trial",
                style: getTextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4A4A4A),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const Spacer(),
            CustomButton(
              buttonTitle: AppText.continueToPayment,
              onTap: () {
                Get.toNamed(AppRoute.getPaymentDetailsScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
