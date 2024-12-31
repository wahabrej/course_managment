


import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../core/utils/constants/app_texts.dart';
import '../../../core/utils/constants/image_path.dart';

class UserDashboardController extends GetxController{

  final List<Map<String, String>> sessions = [
    {
      'session': 'Session 1',
      'title': 'Introduction to Basic Grammar',
      'week': 'week 1',
      'enabled': 'true'
    },
    {
      'session': 'Session 2',
      'title': 'Building Simple Sentences',
      'week': 'week 1',
      'enabled': 'true'
    },
    {
      'session': 'Session 3',
      'title': 'Mastering Everyday Vocabulary',
      'week': 'week 2',
      'enabled': 'false'
    },
    {
      'session': 'Session 4',
      'title': 'Understanding Verb Tenses',
      'week': 'week 2',
      'enabled': 'false'
    },
  ];
  final List<Map<String, dynamic>> sessionProgress = [
    {
      'imageUrl': ImagePath.rectangle1,
      'title': AppText.progressTitle1,
      'lessonCount': 12,
      'progressPercentage': 30,
    },
    {
      'imageUrl': ImagePath.rectangle2,
      'title': AppText.progressTitle1,
      'lessonCount': 8,
      'progressPercentage': 50,
    },
    {
      'imageUrl': ImagePath.rectangle3,
      'title': AppText.progressTitle1,
      'lessonCount': 2,
      'progressPercentage': 70,
    },
    {
      'imageUrl': ImagePath.rectangle3,
      'title': AppText.progressTitle1,
      'lessonCount': 2,
      'progressPercentage': 70,
    },
  ];

}