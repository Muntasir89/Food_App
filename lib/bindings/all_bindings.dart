import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controllers/food_controller.dart';
import '../controllers/navigator_controller.dart';
import '../controllers/splash_controller.dart';
import '../controllers/switch_controller.dart';
import '../controllers/tabbar_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigatorController());
    Get.lazyPut(() => TabBarController());
    Get.lazyPut(() => SwitchController());
    Get.lazyPut(() => FoodController());
    Get.lazyPut(() => SplashController());
  }
}
