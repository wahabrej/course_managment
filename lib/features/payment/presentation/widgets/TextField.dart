import 'package:flutter/material.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon icon;

  const TextFieldWidget(
      {super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: getTextStyle(color: AppColors.hintColor),
        prefixIcon: icon,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
