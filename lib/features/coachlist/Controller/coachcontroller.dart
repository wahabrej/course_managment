import 'package:get/get.dart';

class CoachSessionController extends GetxController {
  var isPreferredCoachSelected = true.obs;

  get selectLessonCreation => null;

  void toggleTab() {
    isPreferredCoachSelected.value = !isPreferredCoachSelected.value;
  }
}
