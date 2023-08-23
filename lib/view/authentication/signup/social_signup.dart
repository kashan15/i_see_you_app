import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';

import '../../../controller/home_screen_controller.dart';
import '../../../utils/image_utils.dart';



class SocialSignup extends GetView<HomeScreenController> {
  const SocialSignup({Key? key}) : super(key: key);
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
              SizedBox(height: Get.height * 0.1,),
              SizedBox(
                height: Get.height * 0.125,
                child: Image.asset(
                  ImageUtils.logo1,
                  // height: Get.height * 0.1,
                ),
              ),
              SizedBox(height: Get.height * 0.01,),
              TextWidget1(
                  textTitle: 'Lets you in',
                  style: CustomTheme.heading
              ),
              SizedBox(height: Get.height * 0.075,),

              Padding(
                padding: EdgeInsets.only(
                  left: Get.width * 0.175
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.04,
                      width: Get.width * 0.1,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(image: AssetImage(
                              ImageUtils.facebook
                          ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: Get.width * 0.025,),
                    TextButton(
                        onPressed: (){},
                        child: TextWidget1(
                            textTitle: 'Continue with facebook',
                            style: CustomTheme.normalText
                        ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.0175,),

              Padding(
                padding: EdgeInsets.only(
                    left: Get.width * 0.175
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.04,
                      width: Get.width * 0.1,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(image: AssetImage(
                              ImageUtils.google
                          ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: Get.width * 0.025,),
                    TextButton(
                      onPressed: (){},
                      child: TextWidget1(
                          textTitle: 'Continue with google',
                          style: CustomTheme.normalText
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.0175,),

              Padding(
                padding: EdgeInsets.only(
                    left: Get.width * 0.175
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.04,
                      width: Get.width * 0.1,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(image: AssetImage(
                              ImageUtils.apple
                          ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: Get.width * 0.025,),
                    TextButton(
                      onPressed: (){},
                      child: TextWidget1(
                          textTitle: 'Continue with apple',
                          style: CustomTheme.normalText
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: Get.height * 0.2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: Get.width * 0.025,),
                  TextWidget1(
                      textTitle: 'Or',
                      style: CustomTheme.normalText
                  ),
                  SizedBox(width: Get.width * 0.025,),
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.025,),

              BouncingButton(
                  onPressed: ()async{
                    Future.delayed(Duration(seconds: 1), (){
                      Get.toNamed(kSignupScreen);
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
                        "Signup",
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
              //     Get.toNamed(kSignupScreen);
              //   },
              //   isSelected: false,
              //   title: 'Signup',
              //   margin: EdgeInsets.symmetric(
              //       horizontal: Get.width * 0.15
              //   ),
              //   padding: EdgeInsets.symmetric(
              //       vertical: Get.height * 0.015
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget1(
                      textTitle: 'Already have an account?',
                      style: CustomTheme.shortText
                  ),
                  // SizedBox(width: Get.width * 0.005,),
                  TextButton(
                    onPressed: (){},
                    child: TextWidget(
                      textTitle: 'sign in',
                      fontSize: Get.height * 0.015,
                      fontFamily: montserratRegular,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2.0,
                    )
                  )
                ],
              )

            ],
          )
      ),
    );
  }


}
