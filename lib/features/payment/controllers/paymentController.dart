import 'package:get/get.dart';

class TokenListController extends GetxController {
  RxList<bool> isSelectedList = List.generate(5, (index) => false).obs;

  void toggleSelection(int index) {
    isSelectedList[index] = !isSelectedList[index];
  }

  RxList<bool> isSelectedListCard = List.generate(3, (index) => false).obs;

  void toggleSelectionCard(int index) {
    isSelectedListCard[index] = !isSelectedListCard[index];
  }
}
