import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/features/payment/presentation/screens/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/paymentController.dart';

class TokenListScreen extends StatelessWidget {
  final tokenListController = Get.find<TokenListController>();

  TokenListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.shop,
          style: getTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600,
          color: AppColors.headerTextColor
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: tokenListController.isSelectedList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Container(
                          height: 58.h,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.r)),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              ImagePath.coin,
                              height: 28.h,
                              width: 29.w,
                            ),
                            title: Text(
                              '50 tokens',
                              style: getTextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              '\$20 + 5 free tokens',
                              style: getTextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTittle),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                // Use the controller to toggle the selection
                                tokenListController.toggleSelection(index);
                              },
                              icon: Icon(
                                tokenListController.isSelectedList[index]
                                    ? Icons.radio_button_checked_outlined
                                    : Icons.radio_button_unchecked,
                              ),
                              color: tokenListController.isSelectedList[index]
                                  ? AppColors.primary
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              CustomButton(
                buttonTitle: AppText.continueToPayment,
                onTap: () {
                      Get.to(()=> const PaymentMethod());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
