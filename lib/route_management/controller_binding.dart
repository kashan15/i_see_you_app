import 'package:get/get.dart';
import 'package:i_see_you/controller/competitive_screen_controller.dart';
import 'package:i_see_you/controller/dance_location_controller.dart';
import 'package:i_see_you/controller/dance_type_controller.dart';
import 'package:i_see_you/controller/dancer_screen_controller.dart';
import 'package:i_see_you/controller/dancer_type_controller.dart';
import 'package:i_see_you/controller/edit_my_profile_controller.dart';
import 'package:i_see_you/controller/enter_video_detail_controller.dart';
import 'package:i_see_you/controller/home_screen_controller.dart';
import 'package:i_see_you/controller/i_am_screen_controller.dart';
import 'package:i_see_you/controller/latin_screen_controller.dart';
import 'package:i_see_you/controller/level_screen_controller.dart';
import 'package:i_see_you/controller/media_screen_controller.dart';
import 'package:i_see_you/controller/navbar_controller.dart';
import 'package:i_see_you/controller/onboarding_controller.dart';
import 'package:i_see_you/controller/upload_bachata_video_controller.dart';
import 'package:i_see_you/controller/upload_profile_picture_controller.dart';
import 'package:i_see_you/controller/wellness_controller.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/view/main%20screen/competitive/competitive_screen.dart';

import '../controller/splash_screen_controller.dart';
import '../controller/upload_reggaeton_video_controller.dart';
import '../controller/upload_video_controller.dart';


class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => CompetitiveScreenController());
    Get.lazyPut(() => DanceTypeScreenController());
    Get.lazyPut(() => DancerTypeScreenController());
    Get.lazyPut(() => DancerScreenController());
    Get.lazyPut(() => IAmScreenController());
    Get.lazyPut(() => LatinScreenController());
    Get.lazyPut(() => LevelScreenController());
    Get.lazyPut(() => MediaScreenController());
    Get.lazyPut(() => UploadScreenController());
    Get.lazyPut(() => WellnessScreenController());
    Get.lazyPut(() => DanceLocationController());
    Get.lazyPut(() => UploadBachataVideoController());
    Get.lazyPut(() => UploadReggaetonVideoController());
    Get.lazyPut(() => VideoDetailController());
    Get.lazyPut(() => UploadProfilePictureController());
    Get.lazyPut(() => EditMyProfileController());
  }
}
