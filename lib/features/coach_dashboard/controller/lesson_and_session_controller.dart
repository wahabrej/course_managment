import 'package:get/get.dart';

class LessonCreationController extends GetxController {
  // Observable variable to track selected lesson level
  var selectedLessonLevel = 'Beginner'.obs;

  // List of lesson levels
  final List<String> lessonLevels = ['Beginner', 'Intermediate', 'Advanced'];

  // Function to update the selected lesson level
  void updateLessonLevel(String? newValue) {
    if (newValue != null) {
      selectedLessonLevel.value = newValue;
    }
  }

  var isLessonSelected =
      true.obs; // By default, Lesson creation is selected

  // Function to select Lesson creation
  void selectLessonCreation() {
    isLessonSelected.value = true;
  }

  // Function to select Session creation
  void selectSessionCreation() {
    isLessonSelected.value = false;
  }
}
