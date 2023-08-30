// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:i_see_you/utils/image_utils.dart';
//
// import '../../controller/splash_screen_controller.dart';
//
// class SplashScreen extends GetView<SplashController> {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return  Scaffold(
//       body: Container(
//         height: Get.height,
//         width: Get.width,
//         color: Colors.white,
//         child: Image.asset(ImageUtils.onboard1,
//           width: double.infinity,
//           fit: BoxFit.fill,
//         ),
//       ),
//     );
//   }
//
//
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/image_utils.dart';
import '../../utils/route_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    goto();
  }
  goto()async{
     Timer(Duration(seconds: 8), () async{
       await Get.toNamed(kHomeScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Image.asset(
          // ImageUtils.splashAnimated,
          ImageUtils.splashAnimated2,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
