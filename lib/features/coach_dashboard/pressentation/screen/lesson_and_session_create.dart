// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:course_online/features/coach_dashboard/controller/dropdown_controller.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/dripdownbuttion2.dart';
import 'package:course_online/features/coach_dashboard/pressentation/widgets/dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:course_online/core/common/widgets/Custom_Button.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/icon_path.dart';
import '../../controller/lesson_and_session_controller.dart';
import '../widgets/Toggle_button.dart';

class LessonAndSessionCreateScreen extends StatelessWidget {
  LessonAndSessionCreateScreen({super.key});
  final DropdownController dropdownController = Get.put(DropdownController());

  final lessonCreationController = Get.find<LessonCreationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Create',
          style: GoogleFonts.inter(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF344054)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Create new here',
                style: getTextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF344054)),
              ),
              ToggleButton(),
              SizedBox(height: 24.h),
              Obx(
                () => lessonCreationController.isLessonSelected.value
                    ? LessonCreation(
                        controller: lessonCreationController,
                      )
                    : const SessionCreation(),
              ),
              SizedBox(height: 10.h),
              Obx(() => lessonCreationController.isLessonSelected.value
                  ? CustomButton(buttonTitle: 'Publish Lesson ', onTap: () {})
                  : CustomButton(buttonTitle: 'Publish Session', onTap: () {})),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonCreation extends StatelessWidget {
  LessonCreation({
    super.key,
    required this.controller,
  });
  final DropdownController dropdownController = Get.find<DropdownController>();
  final DropdownController dropdownController2 = Get.find<DropdownController>();
  final LessonCreationController controller;
  TextEditingController titleController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController meetingLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lesson title',
          style: getTextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              lineHeight: 13.83,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 42.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
          child: TextFormField(
            controller: titleController,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lesson duration',
                    style: getTextStyle(
                        fontSize: 14.sp,
                        lineHeight: 13.83,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF344054)),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 42.h,
                    padding: EdgeInsets.symmetric(vertical: 5.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Select time',
                        hintStyle: getTextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF98A2B3),
                        ),
                        prefixIcon: SvgPicture.asset(
                          IconPath.time,
                          height: 16.h,
                          width: 16.w,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lesson level',
                    style: getTextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF344054)),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 42.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.r, horizontal: 12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Expanded(
                      child: Obx(() => ReusableDropdownButton<String>(
                            items: _BuildDropDownItemMenu(),
                            value: dropdownController
                                        .selectedOccupation.value.isEmpty ||
                                    !_BuildDropDownItemMenu().any((item) =>
                                        item.value ==
                                        dropdownController
                                            .selectedOccupation.value)
                                ? null
                                : dropdownController.selectedOccupation.value,
                            hintText: 'Select Occupation',
                            onChanged: (value) {
                              dropdownController.setSelectedOccupation(value!);
                            },
                            isExpanded: true,
                            isDense: true,
                            dropdownColor: Colors.grey[200],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Zoom meeting link',
          style: getTextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              lineHeight: 13.83,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 42.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
          child: TextFormField(
            controller: meetingLinkController,
            decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Lesson plan',
          style: getTextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 211.h,
          padding: EdgeInsets.only(left: 12.r, right: 12.r, top: 16.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 26.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // Now inside a Row, Expanded is valid
                          child: Obx(() => ReusableDropdownButton2<String>(
                                items: _BuildDropDownItemMenu2(),
                                value2: dropdownController
                                        .selectedOccupation2.value.isEmpty
                                    ? null
                                    : dropdownController
                                        .selectedOccupation2.value,
                                hintText: 'Select Occupation',
                                onChanged: (value2) {
                                  dropdownController
                                      .setSelectedOccupation2(value2!);
                                },
                                isExpanded: true,
                                dropdownColor: Colors.grey[200],
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                      height: 26.h,
                      width: 185.w,
                      padding: EdgeInsets.only(
                        left: 10.w,
                        right: 10.w,
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFFEAEAEA),
                          borderRadius: BorderRadius.circular(4.r)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: -18),
                          hintText: 'Lesson title',
                          hintStyle: getTextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF98A2B3)),
                        ),
                      )),
                  SizedBox(width: 12.w),
                  Container(
                    height: 26.h,
                    width: 60.w,
                    padding: EdgeInsets.only(
                        left: 8.r, right: 8.r, top: 5.r, bottom: 5.r),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          IconPath.calender,
                          height: 14.h,
                          width: 14.w,
                        ),
                        SvgPicture.asset(
                          IconPath.row,
                          height: 14.h,
                          width: 14.w,
                        ),
                        SvgPicture.asset(
                          IconPath.time_2,
                          height: 14.h,
                          width: 14.w,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 17.w,
                    color: const Color(0xFFFCD522),
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    'Add lesson',
                    style: getTextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFFCD522)),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

//========================================================================================Damo Drop menu===================
List<DropdownMenuItem<String>> _BuildDropDownItemMenu() {
  List<String> occupations = ['Sazidul', 'sumon', 'khukan', 'Others'];

  return occupations.map((String occupation) {
    return DropdownMenuItem<String>(
      value: occupation,
      child: Text(occupation),
    );
  }).toList();
}

List<DropdownMenuItem<String>> _BuildDropDownItemMenu2() {
  List<String> occupations = ['S1:', 'S2:', 'S3:', 'S4:'];

  return occupations.map((String occupation) {
    return DropdownMenuItem<String>(
      value: occupation,
      child: Text(occupation),
    );
  }).toList();
}

class SessionCreation extends StatelessWidget {
  const SessionCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Session title',
          style: getTextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 42.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              filled: false,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Session date',
                  style: getTextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    color: const Color(0xFF344054),
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 42.h,
                  width: 154.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Select date',
                      hintStyle: getTextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp,
                        color: const Color(0xFF98A2B3),
                      ),
                      contentPadding: EdgeInsets.all(8.r),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      prefixIcon: SvgPicture.asset(
                        IconPath.calender,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Session time',
                  style: getTextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    color: const Color(0xFF344054),
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 42.h,
                  width: 154.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 6.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Select time',
                      hintStyle: getTextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp,
                        color: const Color(0xFF98A2B3),
                      ),
                      contentPadding: EdgeInsets.all(8.r),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      prefixIcon: SvgPicture.asset(
                        IconPath.time_2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Session booking start from',
          style: getTextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 42.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
          padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 6.r),
          child: TextFormField(
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Select booking start date',
                hintStyle: getTextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF98A2B3),
                ),
                suffixIcon: SvgPicture.asset(
                  IconPath.calender,
                  height: 16.h,
                  width: 16.w,
                )),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Session topic',
          style: getTextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 140.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
          padding: EdgeInsets.all(12.r),
          child: TextFormField(
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            maxLines: 5,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Zoom meeting link',
          style: getTextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              lineHeight: 13.83,
              color: const Color(0xFF344054)),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 42.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
