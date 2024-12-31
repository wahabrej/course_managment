import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/requstcard.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/sessioncard.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/upcoming_session.dart';
import 'package:course_online/features/user_dashboard/presentation/widget/serach_row.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/services/storage_service.dart';
import '../../controller/coach_dashboard_controller.dart';

class CoachDashboardHomeScreen extends StatelessWidget {
  final List<String> profileImages;
  final int additionalProfilesCount;
  CoachDashboardHomeScreen({
    super.key,
    required this.profileImages,
    required this.additionalProfilesCount,
  });

  final coachDashboardController = Get.find<CoachDashboardController>();

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
                              'Hello abcd',
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
                    Row(
                      children: [
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
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await StorageService.logoutUser();
                          },
                          child: Container(
                            height: 36.h,
                            width: 36.w,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF0F0F0),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.logout_outlined,
                                size: 24.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  const SearchRow(),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    height: 158.h,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFCD522),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            overflow: TextOverflow.ellipsis,
                            AppText.coachbannerTitle,
                            style: getTextStyle(
                              fontSize: 18.sp,
                              lineHeight: 28,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            AppText.coachbannerSubtitle,
                            style: getTextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF344054),
                                lineHeight: 20),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            AppText.coachsessionStartDate,
                            style: getTextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF475467),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            height: 36.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '120+ ',
                                      style: getTextStyle(
                                          color: const Color(0xff1D2939),
                                          fontSize: 14.sp,
                                          lineHeight: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'active participant',
                                      style: getTextStyle(
                                          color: const Color(0xff475467),
                                          fontSize: 12.sp,
                                          lineHeight: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 36.h,
                                  width: 113.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFE467),
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                          color: Colors.white, width: 1)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        IconPath.zoom,
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text(
                                        AppText.joinNow,
                                        style: getTextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            lineHeight: 18,
                                            color: const Color(0xFF1D2939)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SessionCard(
                          sessionTitle: 'Total session',
                          sessionCount: '12',
                          description: 'All about spoken English'),
                      SessionCard(
                        sessionTitle: 'Total student',
                        sessionCount: '1200',
                        description: 'All about spoken English',
                      )
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      Text(
                        AppText.upcoming,
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
                  SizedBox(
                    height: 550.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: coachDashboardController.sessions.length,
                      itemBuilder: (context, index) {
                        final session =
                            coachDashboardController.sessions[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.r),
                          child: UpcomingSession(
                            sessionTitle: session['sessionTitle'],
                            upcomingTime: session['upcomingtime'],
                            instructorName: session['instructorName'],
                            instructorTitle: session['instructorTitle'],
                            currentSession: session['currentSession'],
                            totalSessions: session['totalSessions'],
                            additionalProfilesCount: 8,
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New student request',
                        style: getTextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF344054)),
                      ),
                      Text(
                        'See all',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFC8A402)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          coachDashboardController.studentRequests.length,
                      itemBuilder: (context, index) {
                        final student =
                            coachDashboardController.studentRequests[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.r),
                          child: RequestCard(
                            name: student['name']!,
                            lesson: student['lesson']!,
                          ),
                        );
                      },
                    ),
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