import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/app_texts.dart';
import 'package:course_online/core/utils/constants/icon_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: _buildSearchField()),
      ],
    );
  }

  // Separation of SearchField as its own responsibility
  Widget _buildSearchField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: AppText.searchHintText,
        hintStyle: getTextStyle(
          fontWeight: FontWeight.w400,
          color: const Color(0xFF999999),
        ),
        prefixIcon: _buildPrefixIcon(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(focused: true),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
      ),
    );
  }

  // Prefix icon in a reusable method
  Widget _buildPrefixIcon() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      child: SvgPicture.asset(
        IconPath.search,
        height: 20.h,
        width: 20.w,
      ),
    );
  }

  // OutlineInputBorder as a reusable method with customizable state
  OutlineInputBorder _buildOutlineInputBorder({bool focused = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: const Color(0xFFE9E9E9),
        width: focused ? 2 : 1,
      ),
    );
  }
}
