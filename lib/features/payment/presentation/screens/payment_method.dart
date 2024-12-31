import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Button.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/features/payment/presentation/widgets/success_payment_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool isCardSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment method',
          style: getTextStyle(
              fontSize: 18, lineHeight: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Credit & Debit card',
              style: getTextStyle(
                fontSize: 16,
                lineHeight: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCardSelected = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD0D5DD), width: 1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Row(
                  children: [
                    Icon(
                      size: 24.sp,
                      Icons.credit_card,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Add New Card',
                      style: getTextStyle(
                        fontWeight: FontWeight.w300,
                        lineHeight: 23,
                        color: const Color(0xff667085),
                      ),
                    ),
                    const Spacer(),
                    Radio(
                      activeColor: AppColors.primary,
                      value: false,
                      groupValue: isCardSelected,
                      onChanged: (value) {
                        setState(() {
                          isCardSelected = value as bool;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            Text(
              'Continue with added card',
              style: getTextStyle(
                fontSize: 16,
                lineHeight: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCardSelected = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                child: Row(
                  children: [
                    SvgPicture.network(
                      'https://upload.wikimedia.org/wikipedia/commons/a/a4/Mastercard_2019_logo.svg',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MASTERCARD',
                          style: getTextStyle(color: const Color(0xff344054)),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '**** **** 0783 7873',
                          style: getTextStyle(
                            fontSize: 12,
                            color: const Color(0xff667085),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Radio(
                      value: true,
                      activeColor: AppColors.primary,
                      groupValue: isCardSelected,
                      onChanged: (value) {
                        setState(() {
                          isCardSelected = value as bool;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 350.h,
            ),
            CustomButton(buttonTitle: 'Continue to payment', onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const SuccessPaymentDialog();
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
