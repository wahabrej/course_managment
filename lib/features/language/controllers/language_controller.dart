import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedItem = 'Item 1'.obs;  // Observable variable to hold the selected language

  void updateSelectedItem(String newItem) {
    selectedItem.value = newItem;  // Update the selected language
  }
}