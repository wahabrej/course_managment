import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/features/coach_dashboard/controller/expansiontile_controller.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/cardsession.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../controller/lesson_and_session_list_controller.dart';

class LessonAndSessionListScreen extends StatelessWidget {
  LessonAndSessionListScreen({super.key});
  final LessonAndSessionList lessonAndSessionListController =
      Get.put(LessonAndSessionList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          lessonAndSessionListController.isLessonList.value
              ? 'Lesson list'
              : 'Session list',
          style: getTextStyle(
            fontSize: 18,
            lineHeight: 28,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF344054),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Obx(() => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Total lesson(3)',
                    style: getTextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      lineHeight: 28,
                      color: const Color(0xFF344054),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: lessonAndSessionListController.toggleTab,
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: lessonAndSessionListController
                                      .isLessonList.value
                                  ? AppColors.primary
                                  : AppColors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                bottomLeft: Radius.circular(4.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Lesson',
                                style: getTextStyle(
                                  fontWeight: lessonAndSessionListController
                                          .isLessonList.value
                                      ? FontWeight.w500
                                      : FontWeight.w300,
                                  color: lessonAndSessionListController
                                          .isLessonList.value
                                      ? Colors.black
                                      : const Color(0xff1D2939),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: lessonAndSessionListController.toggleTab,
                          child: Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: !lessonAndSessionListController
                                      .isLessonList.value
                                  ? AppColors.primary
                                  : AppColors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4.r),
                                bottomRight: Radius.circular(4.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Session',
                                style: getTextStyle(
                                  fontWeight: !lessonAndSessionListController
                                          .isLessonList.value
                                      ? FontWeight.w500
                                      : FontWeight.w300,
                                  color: !lessonAndSessionListController
                                          .isLessonList.value
                                      ? Colors.black
                                      : const Color(0xff1D2939),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  lessonAndSessionListController.isLessonList.value
                      ? LessonListWidget()
                      : const SessionListWidget()
                ],
              ),
            )),
      ),
    );
  }
}

class SessionListWidget extends StatelessWidget {
  const SessionListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffDB6600),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.r))),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          'Upcoming session',
                          style: getTextStyle(
                            fontWeight: FontWeight.w300,
                            lineHeight: 18,
                            fontSize: 12,
                            color: const Color(0xffDB6600),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "12 Aug 2024, 8.00am",
                      style: getTextStyle(
                        fontSize: 12,
                        lineHeight: 18,
                        color: const Color(0xFF667085),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fluency Fast Track',
                              style: getTextStyle(
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 24,
                                  color: const Color(0xff1D2939)),
                            ),

                            SizedBox(height: 8.h),

                            Text(
                              'Spoken English',
                              style: getTextStyle(
                                fontSize: 12.sp,
                                color: Colors.black54,
                              ),
                            ),

                            // Entry level
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Container(
                      height: 56.h,
                      width: 125.w,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 21.w, vertical: 8.h),
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F4F7),
                        borderRadius:
                            BorderRadius.circular(8.r), // 8px border radius
                      ),
                      child: Text(
                        'Booking from 11 Aug 2024', // Button text
                        style: getTextStyle(
                            fontSize: 12,
                            color: const Color(0xff344054),
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/access_to_dashboard_avatar1.png',
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Adam Williams',
                                style: getTextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF344054)),
                              ),
                              Text(
                                'Professor',
                                style: getTextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF475467),
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h);
      },
    );
  }
}

class LessonListWidget extends StatelessWidget {
  final LessonExpansionController controller =
      Get.put(LessonExpansionController());

  LessonListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English fundamentals',
                        style: getTextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          lineHeight: 20,
                          color: Colors.black,
                        ),
                      ),
                      Obx(() => IconButton(
                            icon: Icon(
                              controller.isExpanded.value
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              size: 30.sp,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              controller.toggleExpansion();
                            },
                          )),
                    ],
                  ),
                  Text(
                    'Topic: English grammar, Basics of spoken',
                    style: getTextStyle(
                      fontSize: 12.sp,
                      lineHeight: 11,
                      color: const Color(0xFF475467),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Obx(() => Visibility(
                        visible: controller.isExpanded.value,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImagePath.bottomAvatarIcon,
                                  height: 18.h,
                                  width: 18.w,
                                ),
                                SizedBox(width: 7.w),
                                Text(
                                  'Adam Williams',
                                  style: getTextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFF344054),
                                    lineHeight: 11,
                                  ),
                                ),
                                SizedBox(width: 14.w),
                                SvgPicture.asset(IconPath.video,
                                    height: 14.h, width: 14.w),
                                SizedBox(width: 7.w),
                                Text(
                                  '9 sessions total',
                                  style: getTextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFF344054),
                                    lineHeight: 11,
                                  ),
                                ),
                                SizedBox(width: 14.w),
                                SvgPicture.asset(IconPath.time_2,
                                    height: 14.h, width: 14.w),
                                SizedBox(width: 7.w),
                                Text(
                                  '3 weeks',
                                  style: getTextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFF344054),
                                    lineHeight: 11,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            const Divider(color: Color(0xFFEAECF0)),
                            SizedBox(height: 12.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 15.w),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.w, horizontal: 12.h),
                                  height: 30.h,
                                  width: 104.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    border:
                                        Border.all(color: const Color(0xFFD0D5DD)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(IconPath.zoom),
                                      Text(
                                        'Join link ',
                                        style: getTextStyle(
                                            fontSize: 12.sp,
                                            lineHeight: 12,
                                            color: const Color(0xFF1D2939),
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 85.w,
                                  height: 30.h,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.r, horizontal: 12.r),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFF2F4F7),
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  child: Text(
                                    'Entry level',
                                    style: getTextStyle(
                                        fontSize: 12.sp,
                                        lineHeight: 12,
                                        color: const Color(0xFF344054),
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              margin: EdgeInsets.only(left: 15.w),
                              child: Column(
                                children: [
                                  const SessionItemWidget(
                                    sessionNumber: '1',
                                    sessionTitle:
                                        ' Introduction to Basic Grammar',
                                    weekNumber: '1',
                                  ),
                                  SizedBox(height: 16.h),
                                  const SessionItemWidget(
                                    sessionNumber: '2',
                                    sessionTitle: ' Building Simple Sentences',
                                    weekNumber: '2',
                                  ),
                                  SizedBox(height: 16.h),
                                  const SessionItemWidget(
                                    sessionNumber: '3',
                                    sessionTitle:
                                        ' Mastering Everyday Vocabulary',
                                    weekNumber: '3',
                                  ),
                                  SizedBox(height: 16.h),
                                  const SessionItemWidget(
                                    sessionNumber: '4',
                                    sessionTitle: ' Understanding Verb Tenses',
                                    weekNumber: '4',
                                  ),
                                  SizedBox(height: 16.h),
                                  const SessionItemWidget(
                                    sessionNumber: '5',
                                    sessionTitle:
                                        ' Essential Pronunciation Skills',
                                    weekNumber: '5',
                                  ),
                                  SizedBox(height: 16.h),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 16.h,
            ),
        itemCount: 3);
  }
}
