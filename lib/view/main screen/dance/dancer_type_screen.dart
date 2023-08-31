import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/controller/dancer_type_controller.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';
import '../../../controller/home_screen_controller.dart';
import '../../../utils/image_utils.dart';



class DancerTypeScreen extends GetView<DancerTypeScreenController> {
  DancerTypeScreen({Key? key}) : super(key: key);

  List itemList = [
    {
      "name": "Solo",
      "image": ImageUtils.c1
    },
    {
      "name": "Duo/Trio",
      "image": ImageUtils.c2
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
                        textTitle: 'Dancer',
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
                        textTitle: 'Type',
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
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.06,
                      vertical: Get.height * 0.02
                  ),
                  itemCount: itemList.length, // Number of containers
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // crossAxisCount: columnsCount,
                      crossAxisCount: 2,
                      childAspectRatio: Get.width*1.35 / Get.height*1.3,
                      crossAxisSpacing: Get.width * 0.08,
                      mainAxisSpacing: Get.height * 0.05
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each container
                    return Container(
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
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage(
                                  itemList[index]['image'],
                                ),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(height: Get.height * 0.01,),
                          BouncingButton(
                            onPressed: (){
                              Future.delayed(Duration(milliseconds: 600), (){
                                Get.toNamed(kUploadVideoScreen);
                              });
                            },
                            child: CustomButton(
                              isSelected: false,
                              color: gridButton,
                              margin: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.02,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: Get.height * 0.0075,
                              ),
                              title: itemList[index]['name'],
                              textColor: Colors.white,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              fontFamily: montserratSemiBold,
                              borderRadius: Get.width * 0.04,
                              borderColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                SizedBox(height: Get.height * 0.02,),
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
                              ImageUtils.c4,
                            ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: Get.height * 0.01,),
                      BouncingButton(
                        onPressed: (){
                          Future.delayed(Duration(milliseconds: 600), (){
                            Get.toNamed(kUploadVideoScreen);
                          });
                        },
                        child: CustomButton(
                          isSelected: false,
                          color: gridButton,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.0075,
                          ),
                          title: "Group",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textColor: Colors.white,
                          fontFamily: montserratSemiBold,
                          borderRadius: Get.width * 0.04,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.1,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 600), (){
                        Get.toNamed(kDanceLocation);
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
                      Future.delayed(Duration(milliseconds: 600), (){
                        Get.toNamed(kDanceLocation);
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
