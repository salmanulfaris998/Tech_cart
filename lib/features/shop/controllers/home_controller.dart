import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final caruscurentindex = 0.obs;
  void updateindicator(ndex) {
    caruscurentindex.value = ndex;
  }
}
