import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/controller/upload_video_controller.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';
import '../../../controller/home_screen_controller.dart';
import '../../../controller/upload_bachata_video_controller.dart';
import '../../../controller/upload_reggaeton_video_controller.dart';
import '../../../utils/image_utils.dart';


class UploadReggaetonVideo extends GetView<UploadReggaetonVideoController> {
  UploadReggaetonVideo({Key? key}) : super(key: key);

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
                      TextWidget(
                        textTitle: 'Upload',
                        color: Colors.white,
                        fontFamily: montserratMedium,
                        fontSize: Get.height * 0.03,
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
                        textTitle: 'Reggaeton',
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
                Padding(padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.06
                ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Video',
                      color: Colors.white,
                      fontFamily: montserratSemiBold,
                      fontSize: Get.height * 0.04,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),
                Padding(padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.06
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        textTitle: 'Video Gallery',
                        color: Colors.white,
                        fontFamily: montserratSemiBold,
                        fontSize: Get.height * 0.015,
                      ),
                      TextWidget(
                        textTitle: 'Select Multiple',
                        color: Colors.white,
                        fontFamily: montserratSemiBold,
                        fontSize: Get.height * 0.015,
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.06,
                      vertical: Get.height * 0.01
                  ),
                  itemCount: colorList.length, // Number of containers
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // crossAxisCount: columnsCount,
                      crossAxisCount: 4,
                      childAspectRatio: Get.width*1.35 / Get.height*1.3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each container
                    return Container(
                      decoration: BoxDecoration(
                          color: colorList[index]['color'],
                          borderRadius: BorderRadius.circular(Get.width * 0.0),
                          image: DecorationImage(image: AssetImage(
                              itemList[index]['image']
                          ),
                              fit: BoxFit.cover
                          )
                      ),

                    );
                  },
                ),

                SizedBox(height: Get.height * 0.04,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(seconds: 1), (){
                        Get.toNamed(kSignupScreen);
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
                      Future.delayed(Duration(seconds: 1), (){
                        Get.toNamed(kSignupScreen);
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
