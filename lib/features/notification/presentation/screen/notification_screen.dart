import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/features/notification/presentation/widget/notification_card.dart';
import 'package:course_online/features/notification/presentation/widget/notification_session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/styles/global_text_style.dart';
import '../widget/notification_earlier_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.notification,
            style: getTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                lineHeight: 28,
                color: AppColors.rattingColor)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppText.newText,
                style: getTextStyle(
                    fontSize: 16.sp,
                    lineHeight: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.notificationHeader)),
            SizedBox(
              height: 12.h,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => const NotificationCard(
                      image: 'assets/images/notification_image_1.png',
                      title: "Your booking is approved. Enjoy your session !",
                      time: '2 second ago',
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 12.h,
                    ),
                itemCount: 4),
            SizedBox(
              height: 12.h,
            ),
            Text(AppText.session,
                style: getTextStyle(
                    fontSize: 16.sp,
                    lineHeight: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.notificationHeader)),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => SessionCard(
                      image: ImagePath.sessionImage,
                      title: "Landon Bloom and Emilia Harcourt invite you. ",
                      time: 'The session will start 30 min',
                      onTapZoom: () {},
                      onTapDel: () {},
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 12.h,
                    ),
                itemCount: 2),
            SizedBox(
              height: 12.h,
            ),
            Text(AppText.earlier,
                style: getTextStyle(
                    fontSize: 16.sp,
                    lineHeight: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.notificationHeader)),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => const EarlierCard(
                      image: 'assets/images/notification_image_1.png',
                      title: "Your booking is approved. Enjoy your session !",
                      time: '2 second ago',
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 12.h,
                    ),
                itemCount: 2),
          ],
        ),
      ),
    );
  }
}
