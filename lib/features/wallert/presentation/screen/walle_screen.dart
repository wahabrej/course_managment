import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/storage_service.dart';
import '../widget/badge_widget.dart';
import '../widget/error_more_toekn_widget.dart';
import '../widget/token_widget.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your wallet',
            style: getTextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                lineHeight: 28,
                color: AppColors.rattingColor)),
        actions: [
          GestureDetector(
            onTap: () async{
              await StorageService.logoutUser();
            },
            child: Padding(
              padding:  EdgeInsets.only(right: 15.w),
              child: Container(
                height: 36.h,
                width: 36.w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF0F0F0),
                ),
                child: Center(child: Icon(Icons.logout_outlined,size: 24.sp,)),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            const TokenCard(),
            SizedBox(height: 24.h),
            const BadgesSection(),
            const EarnMoreTokenSection(),
          ],
        ),
      ),
    );
  }
}
