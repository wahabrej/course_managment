import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/constants/colors.dart';

class AppointmentController extends GetxController {
  final dateTextController = TextEditingController();
  var selectedDate = DateTime.now().obs;
  var startTime = TimeOfDay.now().obs;
  var endTime = TimeOfDay.now().obs;
  var isButtonEnabled = false.obs;

  void updateStartTime(TimeOfDay time) {
    startTime.value = time;
    _enableButton();
    print("The picked start time is: $time");
  }

  void updateEndTime(TimeOfDay time) {
    endTime.value = time;
    _enableButton();
    print("The picked end time is: $time");
  }

  Future<void> selectTime(BuildContext context, TimeOfDay initialTime,
      Function(TimeOfDay) onTimePicked) async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primary,
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
          buttonTheme: const ButtonThemeData(
            colorScheme: ColorScheme.light(primary: AppColors.primary),
          ),
        ),
        child: child!,
      ),
    );
    if (pickedTime != null) {
      onTimePicked(pickedTime);
    }
  }

  @override
  void onInit() {
    super.onInit();
    dateTextController.addListener(_validateFields);
  }

  void _validateFields() {
    isButtonEnabled.value = dateTextController.text.isNotEmpty;
  }

  void _enableButton() {
    isButtonEnabled.value = true;
  }

  void updateDate(DateTime date) {
    selectedDate.value = date;
    dateTextController.text = DateFormat('MMM dd, yyyy').format(date);

    // Reset startTime and endTime to the current time (or a default time)
    isButtonEnabled.value = false;
    startTime.value = TimeOfDay.now();
    endTime.value = TimeOfDay.now();

    _validateFields();
  }

  Future<void> pickDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primary,
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
          buttonTheme: const ButtonThemeData(
            colorScheme: ColorScheme.light(primary: AppColors.primary),
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      updateDate(picked);
    }
  }

  String get formattedDate =>
      DateFormat('MMM d, yyyy').format(selectedDate.value);

  @override
  void onClose() {
    dateTextController.dispose();
    super.onClose();
  }
}
