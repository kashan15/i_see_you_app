import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/utils/font_utils.dart';
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
            SizedBox(height: Get.height * 0.5,),
            Text("Subscription",
            style: TextStyle(
              color: Colors.white,
              fontFamily: montserratSemiBold,
              fontSize: Get.height * 0.04
            ),
            )
          ],
        )
      ),
    );
  }


}
