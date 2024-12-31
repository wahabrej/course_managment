import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle getTextStyle({
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.w400,
  double lineHeight = 21.0,
  TextAlign textAlign = TextAlign.center,
  Color color = Colors.black,
}) {
  return TextStyle(
    fontFamily: 'HelveticaNeue',
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    height: lineHeight.sp / fontSize.sp,
    color: color,
  );
}