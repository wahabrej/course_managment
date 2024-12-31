import 'package:get/get.dart';

import '../../../core/utils/constants/app_texts.dart';

class CoachDashboardController extends GetxController{

  final List<Map<String, dynamic>> sessions = [
    {
      'sessionTitle': AppText.sessionTitle1,
      'upcomingtime': AppText.upcomingtime,
      'instructorName': AppText.instructorName,
      'instructorTitle': AppText.instructorTitle,
      'currentSession': 2,
      'totalSessions': 4,
    },
    {
      'sessionTitle': AppText.sessionTitle2,
      'upcomingtime': AppText.upcomingtime,
      'instructorName': AppText.instructorName2,
      'instructorTitle': AppText.instructorTitle2,
      'currentSession': 2,
      'totalSessions': 4,
    },
    {
      'sessionTitle': AppText.sessionTitle3,
      'upcomingtime': AppText.upcomingtime,
      'instructorName': AppText.instructorName3,
      'instructorTitle': AppText.instructorTitle3,
      'currentSession': 2,
      'totalSessions': 4,
    },
  ];
  final List<Map<String, String>> studentRequests = [
    {'name': 'Adam Williams', 'lesson': 'Lesson: Fundamentals ENG'},
    {'name': 'Emma Stone', 'lesson': 'Lesson: Advanced English'},
    {'name': 'John Doe', 'lesson': 'Lesson: Conversational English'},
  ];

}