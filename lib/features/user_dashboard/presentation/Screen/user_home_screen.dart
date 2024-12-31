import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../coachlist/presentation/Widgets/CoachCard/coach_card.dart';
import '../../../coachlist/presentation/Widgets/Session_card/MainScreen/session_card.dart';
import '../../../coachlist/presentation/screens/coach_list.dart';
import '../widget/serach_row.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 116.h,
              width: double.maxFinite,
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 60.h, bottom: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hello',
                              style: getTextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  lineHeight: 16,
                                  color: const Color(0xff999999)),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Image.asset(
                              IconPath.helloIcon,
                              height: 12.h,
                              width: 12.h,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          AppText.appBarTitle,
                          style: getTextStyle(
                              color: const Color(0xff1f1f1f),
                              fontSize: 20,
                              lineHeight: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.getNotificationScreen());
                      },
                      child: Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF0F0F0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: SvgPicture.asset(
                            IconPath.notification,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchRow(),
                  SizedBox(
                    height: 24.h,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          GestureDetector(
                            onTap:(){
                              Get.toNamed(AppRoute.getLoginScreen());
                            },
                            child: Container(
                              width: double.infinity,
                              height: 165.h,
                              padding: EdgeInsets.all(16.r),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCD522),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppText.bannerTitle,
                                    style: getTextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    AppText.bannerSubtitle,
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF344054),
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    AppText.sessionStartDate,
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF475467),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  GestureDetector(
                                    onTap: () {
                                      // Book now button===================
                                    },
                                    child: Container(
                                      width: 131.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.r),
                                        color: const Color(0xFFFFE983),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.r, vertical: 12.r),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            AppText.buttonName,
                                            style: getTextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          SizedBox(width: 8.w),
                                          SvgPicture.asset(
                                            IconPath.arrowRight,
                                            height: 18.h,
                                            width: 18.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 42,
                            right: 57,
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Colors.white60.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            const Color.fromARGB(255, 236, 234, 234)
                                                .withOpacity(0.8),
                                        blurRadius: 20,
                                        spreadRadius: 30)
                                  ]),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 3,
                            bottom: 0,
                            child: Container(
                              height: 183.h,
                              width: 123.w,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0),
                                  image: const DecorationImage(
                                      image: AssetImage(ImagePath.baby),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 32.r),
                        child: Row(
                          children: [
                            Text(
                              AppText.sessionTitle,
                              style: getTextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF344054)),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                              Get.to(()=> CoachList());
                              },
                              child: Text(
                                AppText.seeAllButton,
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFC8A402)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      SizedBox(
                        height: 520.h,
                        child: ListView.separated(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) {
                            return const CoachDetailsContainer();
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 16.h,
                            );
                          },

                        ),
                      ),
                      // SizedBox(
                      //   height: 340.h,
                      //   child: ListView.builder(
                      //     padding: EdgeInsets.zero,
                      //     itemCount: sessionProgress.length,
                      //     itemBuilder: (context, index) {
                      //       final progress = sessionProgress[index];
                      //       return Padding(
                      //         padding: EdgeInsets.symmetric(vertical: 6.r),
                      //         child: ProgressCard(
                      //           imageUrl: progress['imageUrl'],
                      //           title: progress['title'],
                      //           lessonCount: progress['lessonCount'],
                      //           progressPercentage:
                      //               progress['progressPercentage'],
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Text(
                            AppText.preferredSession,
                            style: getTextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF344054)),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                    color: const Color(0xFFD0D5DD), width: 2.r)),
                            padding: EdgeInsets.only(
                                top: 6.r, bottom: 6.r, left: 8.r, right: 8.r),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  IconPath.frame,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  AppText.dateTime,
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: const Color(0xFF344054)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero, itemBuilder: (BuildContext context, int index) {
                        return const PreferredSession() ;

                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 16.h); },

                      ),
                      // SizedBox(
                      //   height: 550.h,
                      //   child: ListView.builder(
                      //     padding: EdgeInsets.zero,
                      //     itemCount: sessions.length,
                      //     itemBuilder: (context, index) {
                      //       final session = sessions[index];
                      //       return BookedSession(
                      //         sessionTitle: session['sessionTitle'],
                      //         time: session['time'],
                      //         instructorName: session['instructorName'],
                      //         instructorTitle: session['instructorTitle'],
                      //         currentSession: session['currentSession'],
                      //         totalSessions: session['totalSessions'],
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
