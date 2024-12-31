import 'package:get/get.dart';

class LessonAndSessionList extends GetxController{
  var isLessonList = true.obs;


  void toggleTab() {
    isLessonList.value = !isLessonList.value;
  }
}