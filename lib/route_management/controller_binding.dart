import 'package:get/get.dart';
import 'package:i_see_you/controller/home_screen_controller.dart';
import 'package:i_see_you/controller/onboarding_controller.dart';

import '../controller/splash_screen_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => OnboardScreenController());
    Get.lazyPut(() => HomeScreenController());

  }
}
