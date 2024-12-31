import 'package:course_online/features/coachlist/presentation/screens/coach_list.dart';
import 'package:get/get.dart';

import '../../user_dashboard/presentation/Screen/user_dash_board.dart';
import '../../user_dashboard/presentation/Screen/user_home_screen.dart';

class UserNavBarController extends GetxController {
  RxInt isTab = 0.obs;
  late List page = [const UserHomeScreen(), CoachList(), UserDashboard()];

  var currentIconsIndex = 0.obs;
  void changeImageIndex(int newIndex, int totalImage) {
    currentIconsIndex.value = newIndex % totalImage;
  }
}
