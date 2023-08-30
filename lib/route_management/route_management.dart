import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:i_see_you/components/custom_navbar1.dart';
import 'package:i_see_you/view/home/home_screen.dart';
import 'package:i_see_you/view/main%20screen/dance/dance_location.dart';
import 'package:i_see_you/view/main%20screen/dance/latin_screen.dart';
import 'package:i_see_you/view/main%20screen/upload/upload_bachata_video.dart';
import 'package:i_see_you/view/main%20screen/upload/upload_reggaeton_video.dart';
import 'package:i_see_you/view/main%20screen/upload/video/enter_video_details.dart';
import 'package:i_see_you/view/profile/edit_my_profile.dart';
import 'package:i_see_you/view/profile/upload_profile_picture.dart';
import 'package:i_see_you/view/splash/onboarding/onboarding_screen.dart';
import 'package:i_see_you/view/splash/splash_screen.dart';
import '../utils/route_utils.dart';
import '../view/authentication/login/login_screen.dart';
import '../view/authentication/signup/signup_screen.dart';
import '../view/authentication/signup/social_signup.dart';
import '../view/main screen/competitive/competitive_screen.dart';
import '../view/main screen/dance/dance_type_screen.dart';
import '../view/main screen/dance/dancer_screen.dart';
import '../view/main screen/dance/dancer_type_screen.dart';
import '../view/main screen/i_am_screen.dart';
import '../view/main screen/level/level_screen.dart';
import '../view/main screen/media/media_screen.dart';
import '../view/main screen/upload/upload_video_screen.dart';
import '../view/main screen/wellness/wellness_screen.dart';
import 'controller_binding.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name:   kSplashScreen,
        page: () =>  const SplashScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSocialSignup,
        page: () =>  const SocialSignup(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kSignupScreen,
        page: () =>  const SignupScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kLoginScreen,
        page: () =>  const LoginScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kIAmScreen,
        page: () => IAmScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kDancerScreen,
        page: () => DancerScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kDancerTypeScreen,
        page: () => DancerTypeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kDanceTypeScreen,
        page: () => DanceTypeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kLatinScreen,
        page: () => LatinScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kDanceLocation,
        page: () => DanceLocationScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kUploadBachataVideo,
        page: () => UploadBachataVideo(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kUploadReggaetonVideo,
        page: () => UploadReggaetonVideo(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kVideoDetails,
        page: () => VideoDetailScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kUploadProfilePicture,
        page: () => UploadProfilePicture(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kUploadFrom,
        page: () => UploadFrom(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kNavBar,
        page: () => const BottomNavBar(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kEditMyProfile,
        page: () => EditMyProfile(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kMediaScreen,
        page: () => MediaScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kWellnessScreen,
        page: () => WellnessScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kUploadVideoScreen,
        page: () => UploadVideoScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kCompetitiveScreen,
        page: () => CompetitiveScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kLevelScreen,
        page: () => LevelScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kHomeScreen,
        page: () =>  const HomeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kHomeScreen,
        page: () =>  const HomeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kOnboardingScreen,
        page: () => const OnboardScreen(),
        binding: ControllerBinding(),
      ),
    ];

  }}
