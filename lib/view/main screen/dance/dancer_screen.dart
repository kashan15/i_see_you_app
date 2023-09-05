import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/controller/dancer_screen_controller.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';
import '../../../controller/home_screen_controller.dart';
import '../../../utils/image_utils.dart';



class DancerScreen extends GetView<DancerScreenController> {
  DancerScreen({Key? key}) : super(key: key);

  List itemList = [
    {
      "name": "Dancer",
      "image": ImageUtils.b1
    },
    {
      "name": "Choreographer",
      "image": ImageUtils.b2
    },{
      "name": "Adjudicator",
      "image": ImageUtils.b3
    },{
      "name": "School",
      "image": ImageUtils.b1
    },{
      "name": "Parents",
      "image": ImageUtils.b2
    },{
      "name": "Cheerleaders",
      "image": ImageUtils.b3
    },{
      "name": "Wellness",
      "image": ImageUtils.b1
    },{
      "name": "Scout",
      "image": ImageUtils.b2
    },{
      "name": "Advertiser",
      "image": ImageUtils.b3
    },
    {
      "name": "Media",
      "image": ImageUtils.b1
    },
    {
      "name": "Media",
      "image": ImageUtils.b3
    },
  ];
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(
                  // ImageUtils.splashImage
                  ImageUtils.newBackground2
              ),
                  fit: BoxFit.fill
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.05,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        textTitle: 'Dancer',
                        color: Colors.white,
                        fontFamily: montserratMedium,
                        fontSize: Get.height * 0.05,
                      ),
                      BouncingButton(
                        onPressed: (){
                          Future.delayed(Duration(milliseconds: 600), (){
                            Get.back();
                          });
                        },
                        child: CustomButton(
                          isSelected: false,
                          color: Colors.yellow,
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.005,
                            horizontal: Get.width * 0.075,),
                          title: 'Skip',
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05,),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.3
                  ),
                  padding: EdgeInsets.only(
                      bottom: Get.width * 0.04
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Get.width * 0.04)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.01,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            CircleAvatar(
                              radius: Get.width * 0.0275,
                              backgroundColor: Colors.green,
                              child:
                              Center(
                                child: Icon(
                                  Icons.check,
                                  size: Get.height * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.02,),

                          ]),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.01),
                        height: Get.height * 0.125,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage(
                              ImageUtils.c11,
                            ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: Get.height * 0.01,),
                      BouncingButton(
                        onPressed: (){
                          Future.delayed(Duration(milliseconds: 600), (){
                            Get.toNamed(kDancerTypeScreen);
                          });
                        },
                        child: CustomButton(
                          isSelected: false,
                          color: gridButton,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.00,
                          ),
                          title: "Professional\nDancer",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textColor: Colors.white,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05,),

                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.3
                  ),
                  padding: EdgeInsets.only(
                      bottom: Get.width * 0.04
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Get.width * 0.04)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.01,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            CircleAvatar(
                              radius: Get.width * 0.0275,
                              backgroundColor: Colors.green,
                              child:
                              Center(
                                child: Icon(
                                  Icons.check,
                                  size: Get.height * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: Get.width * 0.02,),

                          ]),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.01),
                        height: Get.height * 0.125,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(image: AssetImage(
                              ImageUtils.c11,
                            ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: Get.height * 0.01,),
                      BouncingButton(
                        onPressed: (){
                          Future.delayed(Duration(milliseconds: 600), (){
                            Get.toNamed(kDancerTypeScreen);
                          });
                        },
                        child: CustomButton(
                          isSelected: false,
                          color: gridButton,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.002,
                          ),
                          title: "Pre-Professional\nDancer",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textColor: Colors.white,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.15,),

                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 500), (){
                        Get.toNamed(kDancerTypeScreen);
                      });
                    },
                    child:
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: Get.width* 0.15),
                      padding:  EdgeInsets.symmetric(vertical: Get.height * 0.015),
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
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )


                ),

                SizedBox(height: Get.height * 0.025,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 500), (){
                        Get.toNamed(kDancerTypeScreen);
                      });
                    },
                    child:
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: Get.width* 0.15),
                      padding:  EdgeInsets.symmetric(vertical: Get.height * 0.015),
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
                      child: const Center(
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )


                ),
                SizedBox(height: Get.height * 0.05,),


              ],
            ),
          )
      ),
    );
  }


}
