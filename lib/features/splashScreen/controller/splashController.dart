import 'package:get/get.dart';
import '../../../core/services/storage_service.dart';


class SplashController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Future.delayed(const Duration(seconds: 1), () {
        bool hasToken =  StorageService.hasToken();
       if(hasToken){
         if(StorageService.role=='instructor'){
           Get.offAllNamed('/coachNavBar');
         }else{
           Get.offAllNamed('/userNavBar');
         }
       }else{
         Get.offAllNamed('/onBoardIngScreen');
       }
      }
    );

  }
}
