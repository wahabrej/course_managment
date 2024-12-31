import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class UserSelectionController extends GetxController{

  RxBool isStudent=true.obs;


  void navigatorToCoach (){
    isStudent.value=false;
    Get.toNamed(AppRoute.getLoginScreen());
}
  void navigatorToStudent (){
    isStudent.value=true;
   Get.toNamed(AppRoute.getUserNavBar());
  }
}