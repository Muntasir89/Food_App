import 'package:food_mobile_app/view/introduction.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../utils/navigator.dart';

class SplashController extends GetxController {
  // for showing introduction screen just once
  final box = GetStorage();
  bool get showIntro => box.read('showIntro') ?? true;

  void changeBool(bool val) {
    box.write('showIntro', val);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 8), () {
      Get.offAll(
          () => showIntro == true ? const IntroductionPage() : MainNavigator(),
          transition: Transition.cupertino);
    });
    super.onInit();
  }
}
