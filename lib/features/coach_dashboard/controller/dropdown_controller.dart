import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedOccupation = ''.obs;
  var selectedOccupation2 = ''.obs;

  void setSelectedOccupation(String value) {
    selectedOccupation.value = value;
  }

  void setSelectedOccupation2(String value2) {
    selectedOccupation2.value = value2;
  }
}
