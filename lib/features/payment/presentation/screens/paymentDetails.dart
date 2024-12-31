import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Appointment/presentation/screens/appointment_conform.dart';

class PaymentDetailsScreen extends StatelessWidget {
  PaymentDetailsScreen({super.key});
 final TextEditingController nameController = TextEditingController();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController digitCVVController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Add card',
        style: getTextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            lineHeight: 28,
            color: AppColors.headerTextColor),
      )),
      body: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 28.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(ImagePath.bankCardImage, height: 177.h),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppText.cardName,
              style: getTextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF344054),
                  lineHeight: 26.24),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 58.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(color: const Color(0xffD0D5DD))),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 12.h),
                      child: SvgPicture.asset(
                        IconPath.card,
                        height: 24.h,
                        width: 24.w,
                      )),
                  //===========================================================
                  Expanded(
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Card Name',
                        hintStyle: getTextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFFCFCFCF),
                            fontWeight: FontWeight.w500,
                            lineHeight: 22),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: getTextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFFCFCFCF),
                          fontWeight: FontWeight.w500,
                          lineHeight: 22),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppText.cardNumber,
              style: getTextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  lineHeight: 26.24,
                  color: const Color(0xFF344054)),
            ),
            SizedBox(height: 8.h),
            Container(
              height: 58.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(color: const Color(0xffD0D5DD))),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 12.h),
                      child: SvgPicture.asset(
                        IconPath.card,
                        height: 24.h,
                        width: 24.w,
                      )),
                  Expanded(
                    child: TextFormField(
                      controller: cardController,
                      decoration: InputDecoration(
                        hintText: '1827 1287 3920 0879',
                        hintStyle: getTextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFFCFCFCF),
                            fontWeight: FontWeight.w500,
                            lineHeight: 22),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: getTextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFFCFCFCF),
                          fontWeight: FontWeight.w500,
                          lineHeight: 22),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.expireDate,
                        style: getTextStyle(
                            fontSize: 16.sp,
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.w500,
                            lineHeight: 26.24,
                            color: const Color(0xFF344054)),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 58.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          border: Border.all(color: const Color(0xffD0D5DD)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 12.h),
                              child: SvgPicture.asset(
                                IconPath.calendar,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                            SizedBox(width: 3.w),
                            Expanded(
                              child: TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  hintText: '10/01',
                                  hintStyle: getTextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFFCFCFCF),
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 22),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                                style: getTextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFFCFCFCF),
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 22),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 17.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.digitCVV,
                        style: getTextStyle(
                            fontSize: 16.sp,
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.w500,
                            lineHeight: 26.24,
                            color: const Color(0xFF344054)),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 58.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          border: Border.all(color: const Color(0xffD0D5DD)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 12.h),
                              child: SvgPicture.asset(
                                IconPath.lock,
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                            SizedBox(width: 3.w),
                            Expanded(
                              child: TextFormField(
                                controller: digitCVVController,
                                decoration: InputDecoration(
                                  hintText: '879',
                                  hintStyle: getTextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFFCFCFCF),
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 22),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                                style: getTextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFFCFCFCF),
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 22),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
                buttonTitle: AppText.payment,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppointmentConfirmedScreen(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}