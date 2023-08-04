import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';
import '../../controller/home_screen_controller.dart';
import '../../utils/image_utils.dart';


class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(
            ImageUtils.splashImage
          ),
          fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.15,),
            SizedBox(
              height: Get.height * 0.125,
              child: Image.asset(
                ImageUtils.logo1,
                // height: Get.height * 0.1,
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage(
            //       ImageUtils.logo
            //     ))
            //   ),
            // ),
            SizedBox(height: Get.height * 0.01,),
            TextWidget1(
              textTitle: 'Subscription',
              style: CustomTheme.heading
            ),
            SizedBox(height: Get.height * 0.075,),
            TextWidget1(
                textTitle: 'Enjoy a 7-days free trial! After\nthe trial period ends, there will\nbe a monthly subscription fee of \$6.',
                textAlign: TextAlign.center,
                style: CustomTheme.normalText
            ),
            SizedBox(height: Get.height * 0.375,),
            CustomButton(
              onTap: (){
                Get.toNamed(kSocialSignup);
              },
                isSelected: false,
              title: 'Start free trial',
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.15
              ),
              padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.015
              ),
              borderRadius: Get.width * 0.175,
              borderColor: Colors.white,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  gradient1,
                  gradient2,
                  gradient3
                ], // Change these colors as per your requirement
              ),
              textColor: Colors.white,
              fontFamily: montserratSemiBold,
              fontSize: Get.height * 0.02,
            )
          ],
        )
      ),
    );
  }


}
