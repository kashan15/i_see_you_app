import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
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
            // ImageUtils.splashImage
              ImageUtils.newBackground1
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

            BouncingButton(
                onPressed: ()async{
                  Future.delayed(Duration(seconds: 1), (){
                     Get.toNamed(kSocialSignup);
                  });
                },
                child:
                Container(
                  width: 260,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        gradient1,
                        gradient2,
                        gradient3
                      ], // Change these colors as per your requirement
                    ),
                    borderRadius: BorderRadius.circular(Get.width * 0.08),
                    border: Border.all(color: Colors.white,
                        width: 2
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Start Free Trial",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )


            ),

            // CustomButton(
            //   onTap: (){
            //     Get.toNamed(kSocialSignup);
            //   },
            //     isSelected: false,
            //   title: 'Start free trial',
            //   margin: EdgeInsets.symmetric(
            //     horizontal: Get.width * 0.15
            //   ),
            //   padding: EdgeInsets.symmetric(
            //     vertical: Get.height * 0.015
            //   ),
            //   borderRadius: Get.width * 0.175,
            //   borderColor: Colors.white,
            //   gradient: const LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [
            //       gradient1,
            //       gradient2,
            //       gradient3
            //     ], // Change these colors as per your requirement
            //   ),
            //   textColor: Colors.white,
            //   fontFamily: montserratSemiBold,
            //   fontSize: Get.height * 0.02,
            // ),


            /// Custom Buttons
            // const Center(
            //   child: Text(
            //     "Animated Buttons",
            //     style: TextStyle(
            //         fontSize: 30,
            //         letterSpacing: 2,
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
            //
            // SizedBox(height: Get.height * 0.05,),
            // BouncingButton(
            //     onPressed: (){},
            //     child:
            //     Container(
            //       width: 200,
            //       padding: const EdgeInsets.symmetric(vertical: 10),
            //       decoration: BoxDecoration(
            //         gradient: const LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [
            //             gradient1,
            //             gradient2,
            //             gradient3
            //           ], // Change these colors as per your requirement
            //         ),
            //         borderRadius: BorderRadius.circular(Get.width * 0.08),
            //         border: Border.all(color: Colors.white,
            //             width: 2
            //         ),
            //       ),
            //       child: Center(
            //         child: Text(
            //           "Submit",
            //           style: TextStyle(
            //               fontSize: 20,
            //               letterSpacing: 2,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     )
            //
            //
            // ),
            //
            // SizedBox(height: Get.height * 0.05,),
            // Center(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(
            //         Get.width * 0.04
            //       )
            //     ),
            //     child: AnimatedButton(
            //       onPress: (){},
            //       width: 200,
            //       text: 'SUBMIT',
            //       selectedTextColor: Colors.white,
            //       isReverse: true,
            //       transitionType: TransitionType.LEFT_TOP_ROUNDER,
            //       selectedGradientColor: LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //           gradient1,
            //           gradient2,
            //           gradient3
            //         ], // Change these colors as per your requirement
            //       ),
            //       borderRadius: Get.width * 0.175,
            //       borderColor: Colors.white,
            //       borderWidth: 2,
            //       textStyle: TextStyle(
            //           fontSize: 20,
            //           letterSpacing: 2,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ),
            // ),
            // SizedBox(height: Get.height * 0.05,),
            //
            // Center(
            //   child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(
            //               Get.width * 0.04
            //           )
            //       ),
            //       child: AnimatedButton(
            //         onPress: (){},
            //         width: 200,
            //         text: 'SUBMIT',
            //         selectedTextColor: Colors.white,
            //         isReverse: true,
            //         transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
            //         selectedGradientColor: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [
            //             gradient1,
            //             gradient2,
            //             gradient3
            //           ], // Change these colors as per your requirement
            //         ),
            //         borderRadius: Get.width * 0.175,
            //         borderColor: Colors.white,
            //         borderWidth: 2,
            //         textStyle: TextStyle(
            //             fontSize: 20,
            //             letterSpacing: 2,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold),
            //       )
            //   ),
            // ),
            // SizedBox(height: Get.height * 0.05,),
            //
            // Center(
            //   child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(
            //               Get.width * 0.04
            //           )
            //       ),
            //       child: AnimatedButton(
            //         onPress: (){},
            //         width: 200,
            //         text: 'SUBMIT',
            //         selectedTextColor: Colors.white,
            //         isReverse: true,
            //         transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
            //         selectedGradientColor: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [
            //             gradient1,
            //             gradient2,
            //             gradient3
            //           ], // Change these colors as per your requirement
            //         ),
            //         borderRadius: Get.width * 0.175,
            //         borderColor: Colors.white,
            //         borderWidth: 2,
            //         textStyle: TextStyle(
            //             fontSize: 20,
            //             letterSpacing: 2,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold),
            //       )
            //   ),
            // ),
            // SizedBox(height: Get.height * 0.05,),
            //
            // Center(
            //   child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(
            //               Get.width * 0.04
            //           )
            //       ),
            //       child: AnimatedButton(
            //         onPress: (){},
            //         width: 200,
            //         text: 'SUBMIT',
            //         selectedTextColor: Colors.white,
            //         isReverse: true,
            //         transitionType: TransitionType.CENTER_LR_IN,
            //         selectedGradientColor: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [
            //             gradient1,
            //             gradient2,
            //             gradient3
            //           ], // Change these colors as per your requirement
            //         ),
            //         borderRadius: Get.width * 0.175,
            //         borderColor: Colors.white,
            //         borderWidth: 2,
            //         textStyle: TextStyle(
            //             fontSize: 20,
            //             letterSpacing: 2,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold),
            //       )
            //   ),
            // ),
            // SizedBox(height: Get.height * 0.05,),
            //
            // Center(
            //   child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(
            //               Get.width * 0.04
            //           )
            //       ),
            //       child: AnimatedButton(
            //         onPress: (){},
            //         width: 200,
            //         text: 'SUBMIT',
            //         selectedTextColor: Colors.white,
            //         isReverse: true,
            //         transitionType: TransitionType.CENTER_LR_OUT,
            //         selectedGradientColor: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [
            //             gradient1,
            //             gradient2,
            //             gradient3
            //           ], // Change these colors as per your requirement
            //         ),
            //         borderRadius: Get.width * 0.175,
            //         borderColor: Colors.white,
            //         borderWidth: 2,
            //         textStyle: TextStyle(
            //             fontSize: 20,
            //             letterSpacing: 2,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold),
            //       )
            //   ),
            // ),
            // SizedBox(height: Get.height * 0.05,),


          ],
        )
      ),
    );
  }


}
