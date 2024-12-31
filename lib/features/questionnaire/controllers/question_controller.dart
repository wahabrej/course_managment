import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/constants/colors.dart';

class QuestionController extends GetxController {
  var labels = 'Beginner';
  var labels2 = 'Intermediate';
  var labels3 = 'Advanced';
  var selectedItem = 'Item'.obs;
  var progress = 0.0.obs;

  var currentIndex = 0.obs;

  var questions = [
    'What about your reading & writing level right now?',
    'What about your listening level right now?',
    'What about your main goal of this session?'
  ].obs;

  void changeQuestion() {
    currentIndex.value = (currentIndex.value + 1) % questions.length;
  }

  void updateProgress(double value) {
    progress.value = value;
  }

  Color getProgressColor() {
    if (progress.value < 0.4) {
      return const Color(0xff444544); // First segment color
    } else if (progress.value < 0.7666) {
      return AppColors.linerSecond; // Second segment color
    } else {
      return AppColors.secondary; // Third segment color
    }
  }
}
