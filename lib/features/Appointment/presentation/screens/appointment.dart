import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/common/widgets/Custom_Botton.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:course_online/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controllers/appointmentController.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({super.key});

  final appointmentController = Get.find<AppointmentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.appointmentSchedule,
          style: getTextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              lineHeight: 28,
              color: const Color(0xFF344054)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppointmentDetails(context),
              SizedBox(height: 24.h),
              Text(
                'Scheduled date and time',
                style: getTextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF1F1F1F)),
              ),
              SizedBox(height: 12.h),
              _buildDateSelector(context),
              SizedBox(height: 24.h),
              //_buildTimeSelector(context),

              _buildTimeSelector(),
              SizedBox(height: 4.h),

              const Spacer(),
              Obx(() => CustomButton(
                    color: appointmentController.isButtonEnabled.value
                        ? AppColors.primary
                        : const Color(0xff98A2B3),
                    buttonTitle: 'Continue to booking',
                    onTap: appointmentController.isButtonEnabled.value
                        ? () {
                            Get.toNamed(AppRoute.getPaymentCardScreen());
                          }
                        : () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTimeSelector() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFD0D5DD)),
      ),
      child: Row(children: [
        Image.asset(
          IconPath.clock_yellow,
          height: 20.h,
          width: 20.w,
        ),
        SizedBox(width: 12.w),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Time',
            style: getTextStyle(
              fontSize: 12.sp,
              color: const Color(0xFF667085),
              fontWeight: FontWeight.w400,
              lineHeight: 18,
            ),
          ),
          Row(
            children: [
              _buildTimePick(true, appointmentController.startTime,
                  appointmentController.updateStartTime),
              const Text('To'),
              _buildTimePick(true, appointmentController.endTime,
                  appointmentController.updateEndTime),
            ],
          ),
        ]),
      ]),
    );
  }

  Widget _buildAppointmentDetails(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      color: AppColors.containerColor.withOpacity(.2),
                      border: Border.all(color: AppColors.primary, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.r, right: 10.r, top: 10.r),
                      child: Image.asset(
                        ImagePath.cardImage,
                        height: 100.h,
                        width: 90.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  flex: 4,
                  child: _buildDoctorDetails(),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            _buildAdditionalInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Adam Williams',
            style: getTextStyle(
                fontSize: 20.sp,
                color: const Color(0xFF344054),
                fontWeight: FontWeight.w500)),
        SizedBox(height: 8.h),
        Text(AppText.specialized,
            style: getTextStyle(
                fontSize: 12.sp,
                color: const Color(0xff667085),
                fontWeight: FontWeight.w300,
                lineHeight: 18)),
        SizedBox(height: 4.h),
        Text(AppText.englishSpoken,
            style: getTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF475467))),
        SizedBox(height: 8.h),
        Text(AppText.experience,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0xff667085),
                lineHeight: 18)),
        SizedBox(height: 4.h),
        Text('2 years',
            style: getTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF475467))),
        SizedBox(height: 4.h),
        Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  IconPath.star,
                  height: 14.h,
                  width: 14.w,
                ),
                Text(
                  '4.5',
                  style: getTextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF344054),
                      lineHeight: 18),
                ),
              ],
            )),
      ],
    );
  }

  Widget _buildAdditionalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppText.bio,
            style: getTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1D2939))),
        SizedBox(height: 16.h),
        Text(AppText.bioTittle,
            style: getTextStyle(
                fontSize: 12.sp,
                lineHeight: 18,
                fontWeight: FontWeight.w300,
                color: const Color(0xff475467))),
        SizedBox(height: 16.h),
        Text(AppText.socialMedia,
            style: getTextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                lineHeight: 18,
                color: const Color(0xff1D2939))),
        SizedBox(height: 12.h),
        Row(
          children: [
            SvgPicture.asset(
              IconPath.linkdin,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.twitter,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.facebook,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              IconPath.instrageram,
              height: 18.h,
              width: 18.w,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildDateSelector(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: const Color(0xFFD0D5DD)),
      ),
      child: Row(
        children: [
          Image.asset(
            IconPath.calenderbox,
            height: 20.h,
            width: 20.w,
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date',
                style: getTextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF667085),
                  fontWeight: FontWeight.w400,
                  lineHeight: 18,
                ),
              ),
              SizedBox(height: 4.h),
              GestureDetector(
                onTap: () => appointmentController.pickDate(context),
                child: Obx(() => Text(
                      appointmentController.formattedDate,
                      style: getTextStyle(fontSize: 16),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimePick(bool ifPickedTime, Rx<TimeOfDay> currentTime,
      Function(TimeOfDay) onTimePicked) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: GestureDetector(
            child: Obx(() => Text(
                  appointmentController.isButtonEnabled.value
                      ? currentTime.value.format(Get.context!)
                      : 'Select time',
                  style: getTextStyle(fontSize: 16),
                )),
            onTap: () {
              appointmentController.selectTime(
                  Get.context!, currentTime.value, onTimePicked);
            },
          ),
        ),
      ],
    );
  }
}
