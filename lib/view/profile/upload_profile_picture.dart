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
import '../../../controller/wellness_controller.dart';
import '../../../utils/image_utils.dart';
import '../../controller/upload_profile_picture_controller.dart';



class UploadProfilePicture extends GetView<UploadProfilePictureController> {
  UploadProfilePicture({Key? key}) : super(key: key);

  List itemList = [
    {
      "name": "Nutritional",
      "image": ImageUtils.b1
    },
    {
      "name": "Yoga",
      "image": ImageUtils.b2
    },
    {
      "name": "Physiotherapist",
      "image": ImageUtils.b3
    },
    {
      "name": "Chiropractor",
      "image": ImageUtils.b4
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
                      RichText(
                        text: TextSpan(
                        text: 'Upload Your Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: montserratMedium,
                          fontSize: Get.height * 0.02,
                        ),
                          children: [
                            TextSpan(
                                text: '\nPicture',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: montserratMedium,
                                  fontSize: Get.height * 0.04,
                                ),
                            ),
                          ]
                      ),
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
                SizedBox(height: Get.height * 0.2,),
                Container(
                height: Get.height * 0.4,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.15
                ),
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        Get.width * 0.04
                    )
                ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.25,
                        child: Image.asset(
                          ImageUtils.uploadIcon
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04,),
                      BouncingButton(
                        onPressed: ()async{
                          Future.delayed(Duration(milliseconds: 600), (){
                            Get.toNamed(kUploadFrom);
                          });
                        },
                        child: CustomButton(
                          isSelected: false,
                          color: uploadColor,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.05,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.02,
                          ),
                          title: 'Add Image',
                          textColor: Colors.white,
                          fontSize: Get.height * 0.025,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  )

              ],
            ),
          )
      ),
    );
  }


}

class UploadFrom extends GetView<UploadProfilePictureController> {
  UploadFrom({Key? key}) : super(key: key);

  List itemList = [
    {
      "name": "Nutritional",
      "image": ImageUtils.b1
    },
    {
      "name": "Yoga",
      "image": ImageUtils.b2
    },
    {
      "name": "Physiotherapist",
      "image": ImageUtils.b3
    },
    {
      "name": "Chiropractor",
      "image": ImageUtils.b4
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
                  ImageUtils.splashImage
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
                      RichText(
                        text: TextSpan(
                            text: 'Upload',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: montserratMedium,
                              fontSize: Get.height * 0.02,
                            ),
                            children: [
                              TextSpan(
                                text: '\nFrom',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: montserratMedium,
                                  fontSize: Get.height * 0.04,
                                ),
                              ),
                            ]
                        ),
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
                SizedBox(height: Get.height * 0.1,),
                Container(
                  height: Get.height * 0.25,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.275
                  ),
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          Get.width * 0.04
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.175,
                        child: Image.asset(
                            ImageUtils.cameraIcon
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0,),
                      BouncingButton(
                        onPressed: (){},
                        child: CustomButton(
                          isSelected: false,
                          color: uploadColor,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.015,
                          ),
                          title: 'Camera',
                          textColor: Colors.white,
                          fontSize: Get.height * 0.02,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.1,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.025,),
                Container(
                  height: Get.height * 0.25,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.275
                  ),
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          Get.width * 0.04
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.175,
                        child: Image.asset(
                            ImageUtils.galleryIcon
                        ),
                      ),
                      SizedBox(height: Get.height * 0.0,),
                      BouncingButton(
                        onPressed: (){},
                        child: CustomButton(
                          isSelected: false,
                          color: uploadColor,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.015,
                          ),
                          title: 'Gallery',
                          textColor: Colors.white,
                          fontSize: Get.height * 0.02,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.1,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.15,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 600), (){
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
                SizedBox(height: Get.height * 0.02,),

              ],
            ),
          )
      ),
    );
  }


}
