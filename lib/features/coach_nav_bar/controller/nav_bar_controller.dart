import 'package:course_online/features/coach_dashboard/pressentation/screen/coach_dashboard.dart';
import 'package:course_online/features/coach_dashboard/pressentation/screen/lesson_and_session_create.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../coach_dashboard/pressentation/screen/lesson_and_sesson_list_screen.dart';

class CoachNavBarController extends GetxController {
  RxInt isTab = 0.obs;
  late List page = [
    CoachDashboardHomeScreen(
      profileImages: const [
        'assets/images/download.png',
        'assets/images/download1.jpg',
        'assets/images/download2.jpg',
        'assets/images/download3.jpg',
        'assets/images/download4.jpg',
      ],
      additionalProfilesCount: 8,
    ),

    LessonAndSessionListScreen(),
    LessonAndSessionCreateScreen(),
  ];

  var currentIconsIndex = 0.obs;
  void changeImageIndex(int newIndex, int totalImage) {
    currentIconsIndex.value = newIndex % totalImage;
  }
}
