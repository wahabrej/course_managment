import 'package:flutter/material.dart';
import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableDropdownButton2<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value2; // The selected value
  final String? hintText;
  final ValueChanged<T?> onChanged;
  final Widget? icon;
  final TextStyle? textStyle;
  final Color? dropdownColor;
  final double? itemHeight;
  final bool isExpanded;
  final Color? hintTextColor;
  final TextAlign hintTextAlign;

  const ReusableDropdownButton2({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value2,
    this.hintText,
    this.icon,
    this.textStyle,
    this.dropdownColor,
    this.itemHeight = kMinInteractiveDimension,
    this.isExpanded = false,
    this.hintTextColor,
    this.hintTextAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: value2,
      items: items,
      onChanged: onChanged,
      hint: hintText != null
          ? Align(
              alignment: Alignment.centerLeft,
              child: Text(
                hintText!,
                style: getTextStyle(
                  color: hintTextColor ?? Colors.grey,
                  fontSize: 14.sp,
                ),
                textAlign: hintTextAlign,
              ),
            )
          : null,
      icon: icon ?? const Icon(Icons.arrow_drop_down),
      style: getTextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12.sp),
      dropdownColor: dropdownColor,
      itemHeight: itemHeight,
      isExpanded: isExpanded,
    );
  }
}
