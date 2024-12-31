import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBordIngScreenController extends GetxController{

  final PageController pageController = PageController();

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}