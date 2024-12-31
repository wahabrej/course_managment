import 'package:get/get.dart';

class SelectCoachController extends GetxController {
  RxInt selectedIndex = (-1).obs;  // Observable variable to hold the selected index (-1 means none selected initially)

  // Function to update the selected index
  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
