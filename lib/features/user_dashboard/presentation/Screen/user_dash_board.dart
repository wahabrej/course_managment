import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/app_texts.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/icon_path.dart';
import '../../../../routes/app_routes.dart';
import '../../../coachlist/presentation/Widgets/Session_card/WidgetScreen/bottomcontainer.dart';
import '../../../wallert/presentation/screen/walle_screen.dart';
import '../../controller/user_dash_board_controller.dart';
import '../widget/progressLessonContainer.dart';
import '../widget/session_list.dart';

class UserDashboard extends StatelessWidget {
  UserDashboard({super.key});
  final userDashboardController = Get.find<UserDashboardController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 8.h, bottom: 12.h),
                alignment: Alignment.center,
                height: 65.h,
                width: double.maxFinite,
                color: AppColors.white,
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
                      mainAxisSize: MainAxisSize.min,
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
                        SizedBox(width: 12.w),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const WalletPage());
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
                                IconPath.profile_icon,
                                width: 20.w,
                                height: 20.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //Header part

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 29.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current coach",
                          style: getTextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff344054)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(

                      color: const Color(0xFFFFFFFF),
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.r, vertical: 16.r),
                      child: Column(

                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      ImagePath.languageScreenLogo,
                                      height: 48.h,
                                      width: 48.w,
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .65,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Adam Willams",
                                                style: getTextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  lineHeight: 13,
                                                  color:
                                                      const Color(0xff344054),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: AppColors.primary,
                                                    size: 18.sp,
                                                  ),
                                                  SizedBox(width: 4.w),
                                                  Text(
                                                    "4.5",
                                                    style: getTextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 12.sp,
                                                      color: Colors.black54,
                                                      lineHeight: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Specialist in",
                                                  style: getTextStyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(0xFF667085),
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                SizedBox(height: 8.h),
                                                Text(
                                                  'English spoken',
                                                  style: getTextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 24.w),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Experience",
                                                  style: getTextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                SizedBox(height: 8.h),
                                                Text(
                                                  '2 years',
                                                  style: getTextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lesson",
                                style: getTextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          const ProgressLessonContainer(),
                          SizedBox(
                            height: 12.h,
                          ),
                          const Divider(
                            color: Color(0xffD0D5DD),
                          ),

                          SessionListView(sessions: userDashboardController.sessions), //widget call

                          SizedBox(
                            height: 16.h,
                          ),
                          const Divider(
                            color: Color(0xffD0D5DD),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Column(

                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Subscription: ',
                                          style: getTextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xFF475467),
                                              lineHeight: 11.86,
                                              fontSize: 12.sp),
                                        ),
                                        TextSpan(
                                          text: '7 day free trial running',
                                          style: getTextStyle(
                                            fontSize: 12.sp,
                                            lineHeight: 11.86,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xFF475467),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 12.h,),
                                  Text(
                                    "Your next session (12 Aug, 8.00am)",
                                    style: getTextStyle(
                                      fontSize: 12.sp,
                                      lineHeight: 11.86,
                                      fontWeight: FontWeight.w300,
                                      color: const Color(0xFF475467),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 80.w,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.r, vertical: 2.r),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(

                                      children: [
                                        SvgPicture.asset(IconPath.zoom),
                                        SizedBox(width: 3.w,),
                                        Text(
                                          'Join link',
                                          style: getTextStyle(
                                              color: const Color(0xFF1D2939),
                                              fontSize: 10.sp,
                                              lineHeight: 11.86,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Session",
                          style: getTextStyle(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF344054),
                            fontSize: 16.sp,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 32.h,
                          width: 144.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                IconPath.clock1,
                                height: 12.h,
                                width: 12.w,
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                '12 August 2024',
                                style: GoogleFonts.inter(
                                    color: const Color(0xff344054),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 164.h,
                          width: double.infinity,
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r)),
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
                                            color: AppColors.success,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3.r))),
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Text(
                                        '2 of 9',
                                        style: getTextStyle(
                                          fontWeight: FontWeight.w300,
                                          lineHeight: 18,
                                          fontSize: 12.sp,
                                          color: AppColors.success,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "10 am - 12 pm",
                                    style: getTextStyle(
                                        fontSize: 12.sp,
                                        lineHeight: 18,
                                        color: const Color(0xFF667085),
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Building Simple Sentences',
                                            style: getTextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 24,
                                                color: const Color(0xFF475467)),
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            'Writing expert',
                                            style: getTextStyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xFF667085),
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40.h,
                                    width: 113.w,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.r, vertical: 8.r),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: const Color(0xFFFCD522))),
                                    child: Row(


                                      children: [
                                        SvgPicture.asset(IconPath.zoom),
                                        SizedBox(width: 3.w,),
                                        Text(
                                          'Join now',
                                          style: getTextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xFF1D2939)),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const UserInfoContainer(
                                      name: 'Adam Williams',
                                      designation: 'Professor')
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 16.h);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
