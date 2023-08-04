import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:i_see_you/view/authentication/signup/social_signup.dart';
import 'package:i_see_you/view/home/home_screen.dart';
import 'package:i_see_you/view/splash/onboarding/onboarding_screen.dart';
import 'package:i_see_you/view/splash/splash_screen.dart';
import '../utils/route_utils.dart';
import '../view/authentication/signup/signup_screen.dart';
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
        name:   kHomeScreen,
        page: () =>  const HomeScreen(),
        binding: ControllerBinding(),
      ),
      GetPage(
        name:   kOnboardingScreen,
        page: () => OnboardScreen(),
        binding: ControllerBinding(),
      ),
    ];

  }}
