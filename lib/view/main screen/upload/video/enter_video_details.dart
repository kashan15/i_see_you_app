import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/controller/upload_video_controller.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';

import '../../../../components/custom_textfield.dart';
import '../../../../controller/enter_video_detail_controller.dart';
import '../../../../controller/upload_reggaeton_video_controller.dart';
import '../../../../utils/image_utils.dart';



class VideoDetailScreen extends GetView<VideoDetailController> {
  VideoDetailScreen({Key? key}) : super(key: key);

  final TextEditingController schoolController = TextEditingController();
  final TextEditingController onlineController = TextEditingController();

  List itemList = [
    {
      "image": ImageUtils.a1
    },
    {
      "image": ImageUtils.a2
    },{

      "image": ImageUtils.a3
    },{
      "image": ImageUtils.a4
    },{
      "image": ImageUtils.a5
    },{
      "image": ImageUtils.a6
    },{
      "image": ImageUtils.a7
    },{
      "image": ImageUtils.a8
    },{
      "image": ImageUtils.a9
    },
    {
      "image": ImageUtils.a10
    },
    {
      "image": ImageUtils.a11
    },
    {
      "image": ImageUtils.a1
    },
    {
      "image": ImageUtils.a2
    },{

      "image": ImageUtils.a3
    },{
      "image": ImageUtils.a4
    },{
      "image": ImageUtils.a5
    },{
      "image": ImageUtils.a6
    },{
      "image": ImageUtils.a7
    },{
      "image": ImageUtils.a8
    },{
      "image": ImageUtils.a9
    },
    {
      "image": ImageUtils.a10
    },
  ];

  List colorList = [
    {
      "color": Colors.red,

    },
    {
      "color": Colors.green
    },
    {
      "color": Colors.yellow
    },
    {
      "color": Colors.blue
    },
    {
      "color": Colors.brown
    },
    {
      "color": Colors.orange
    },
    {
      "color": Colors.purpleAccent
    },
    {
      "color": gradient2
    },
    {
      "color": Colors.red
    },
    {
      "color": Colors.green
    },
    {
      "color": Colors.yellow
    },
    {
      "color": Colors.blue
    },
    {
      "color": Colors.brown
    },
    {
      "color": Colors.orange
    },
    {
      "color": Colors.purpleAccent
    },
    {
      "color": gradient2
    },
    {
      "color": Colors.red
    },
    {
      "color": Colors.green
    },
    {
      "color": Colors.yellow
    },
    {
      "color": Colors.blue
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
                  ImageUtils.newBackground1
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
                        textTitle: 'Enter Video',
                        color: Colors.white,
                        fontFamily: montserratMedium,
                        fontSize: Get.height * 0.025,
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
                          width: Get.width * 0.235,
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.005,),
                          title: 'Back',
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        textTitle: 'Details',
                        color: Colors.white,
                        fontFamily: montserratSemiBold,
                        fontSize: Get.height * 0.04,
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
                          width: Get.width * 0.235,
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.005,),
                          title: 'Skip',
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.06
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * 0.175,
                              width: Get.width * 0.35,
                              decoration: const BoxDecoration(
                                  color: videoContainerColor,
                                image: DecorationImage(image: AssetImage(
                                  ImageUtils.b2
                                ),
                                  fit: BoxFit.contain
                                )
                              ),
                            ),
                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'John Rambo Smith',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'Solo',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'New York, USA',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'choreographer/tim-25',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'New York Dancing School',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: Get.width * 0.04,),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * 0.175,
                              width: Get.width * 0.35,
                              decoration: const BoxDecoration(
                                  color: gradient2,
                                  image: DecorationImage(image: AssetImage(
                                      ImageUtils.onboard5
                                  ),
                                      fit: BoxFit.contain
                                  )
                              ),
                            ),
                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'John Rambo Smith',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'Solo',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'New York, USA',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'choreographer/tim-25',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                            SizedBox(height: Get.height * 0.02,),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.035),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Get.width * 0.1
                                ),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        gradient1,
                                        gradient3
                                      ]),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.8),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: Offset(0, 1)
                                  )
                                ],
                              ),
                              child: CustomTextField1(
                                textEditingController: schoolController,
                                textColor: gradient2,
                                title: 'New York Dancing School',
                                fontSize: Get.height * 0.0125,
                                fontFamily: montserratSemiBold,
                                inputBorder: InputBorder.none,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.06,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 500), (){
                        Get.toNamed(kUploadProfilePicture);
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
                        Get.toNamed(kLatinScreen);
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
