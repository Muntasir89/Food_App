// import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:get/get.dart';

class SwitchController extends GetxController {
  var currentSaladIndex = 0;

  void changeIndex(int index) {
    currentSaladIndex = index;
  }
}
