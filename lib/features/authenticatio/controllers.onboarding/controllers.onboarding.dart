import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tech_cart/app.dart';
import 'package:tech_cart/features/authenticatio/screens/login/login.dart';

class OnBoardingControlle extends GetxController {
  static OnBoardingControlle get instent {
    return Get.find();
  }

  final pageconroler = PageController();
  Rx<int> currentpage = 0.obs;
  void updatePageIndicator(index) {
    return currentpage.value = index;
  }

  void dotNavigationClick(index) {
    currentpage.value = index;
    pageconroler.jumpTo(index);
  }

  void nextPage() {
    if (currentpage.value == 2) {
      Get.offAll(const loginscreen());
    } else {
      int page = currentpage.value + 1;
      pageconroler.jumpToPage(page);
    }
  }

  void skipPage() {
    int page = currentpage.value = 2;
    pageconroler.jumpToPage(page);
  }
}
