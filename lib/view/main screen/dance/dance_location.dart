import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';

import '../../../components/custom_textfield.dart';
import '../../../controller/dance_location_controller.dart';
import '../../../controller/home_screen_controller.dart';
import '../../../controller/wellness_controller.dart';
import '../../../utils/image_utils.dart';



class DanceLocationScreen extends GetView<DanceLocationController> {
  DanceLocationScreen({Key? key}) : super(key: key);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  List itemList = [
    {
      "name": "School",
      "image": ImageUtils.danceLocationPic1
    },
    {
      "name": "Online",
      "image": ImageUtils.danceLocationPic2
    },
  ];
  List itemList2 = [
    {
      "name": "Drop-in",
      "image": ImageUtils.c2
    },
    {
      "name": "Self-Taught",
      "image": ImageUtils.a14
    },
  ];
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController onlineController = TextEditingController();
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
                        textTitle: 'Where do you',
                        color: Colors.white,
                        fontFamily: montserratMedium,
                        fontSize: Get.height * 0.02,
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
                SizedBox(height: Get.height * 0.005,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        textTitle: 'Dance?',
                        color: Colors.white,
                        fontFamily: montserratSemiBold,
                        fontSize: Get.height * 0.035,
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
                                    fit: BoxFit.contain
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
                    );
                  },
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                      Get.width * 0.06
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child:
                          // Container(
                          //   padding: EdgeInsets.symmetric(
                          //       horizontal: Get.width * 0.03
                          //   ),
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(
                          //         Get.width * 0.1
                          //     ),
                          //     border: const GradientBoxBorder(
                          //       gradient: LinearGradient(
                          //           begin: Alignment.topCenter,
                          //           end: Alignment.bottomCenter,
                          //           colors: [
                          //             gradient1,
                          //             gradient3
                          //           ]),
                          //       width: 5,
                          //     ),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.white.withOpacity(0.8),
                          //           blurRadius: 5,
                          //           spreadRadius: 2,
                          //           offset: Offset(0, 1)
                          //       )
                          //     ],
                          //   ),
                          //   child: CustomTextField1(
                          //   textEditingController: schoolController,
                          //   textColor: gradient2,
                          //   title: 'New York Dancing School',
                          //   // textAlign: TextAlign.center,
                          //   // textAlignVertical: TextAlignVertical.center,
                          //   fontSize: Get.height * 0.01,
                          //   fontFamily: montserratSemiBold,
                          //   inputBorder: InputBorder.none,
                          //     ),
                          // )

                          Material(
                            elevation: 0,
                            shadowColor:
                            Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(Get.width * 0.1),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(Get.width * 0.1),
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
                              // padding: EdgeInsets.symmetric(horizontal: 0.5.w),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: Get.width * 0.035,),
                                  Expanded(
                                    child: TextFormField(
                                      onTap: () {},
                                      keyboardType: TextInputType.emailAddress,
                                      controller: email,
                                      style: const TextStyle(
                                        color: gradient1,
                                        fontFamily: montserratSemiBold,
                                        fontSize: 09
                                      ),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'New York Dancing School',
                                          hintStyle: TextStyle(
                                              color: gradient1
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: Get.width * 0.05,),
                                ],
                              ),
                            ),
                          ),

                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     contentPadding: EdgeInsets.fromLTRB(Get.width * 0.02, Get.height * 0.0015, Get.width * 0.01, Get.height * 0.0015),
                        //     hintText: 'john11@gmail.com',
                        //     hintStyle: TextStyle(
                        //         color: gradient2,
                        //         fontSize: Get.height * 0.02,
                        //         fontFamily: montserratSemiBold
                        //     ),
                        //     border: InputBorder.none,
                        //
                        //   ),
                        //   style: TextStyle(
                        //       color: gradient2,
                        //       fontSize: Get.height * 0.02,
                        //       fontFamily: montserratSemiBold
                        //   ),
                        //
                        // ),
                      ),
                      SizedBox(width: Get.width * 0.035,),
                      Flexible(
                          child:
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.035),
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(
                          //         Get.width * 0.1
                          //     ),
                          //     border: const GradientBoxBorder(
                          //       gradient: LinearGradient(
                          //           begin: Alignment.topCenter,
                          //           end: Alignment.bottomCenter,
                          //           colors: [
                          //             gradient1,
                          //             gradient3
                          //           ]),
                          //       width: 5,
                          //     ),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.white.withOpacity(0.8),
                          //           blurRadius: 5,
                          //           spreadRadius: 2,
                          //           offset: Offset(0, 1)
                          //       )
                          //     ],
                          //   ),
                          //   child: CustomTextField1(
                          //     textEditingController: onlineController,
                          //     textColor: gradient2,
                          //     title: 'New York Dancing Classes',
                          //     // textAlign: TextAlign.center,
                          //     // textAlignVertical: TextAlignVertical.center,
                          //     fontSize: Get.height * 0.01,
                          //     fontFamily: montserratSemiBold,
                          //     inputBorder: InputBorder.none,
                          //   ),
                          // )

                          Material(
                            elevation: 0,
                            shadowColor:
                            Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(Get.width * 0.1),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(Get.width * 0.1),
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
                              // padding: EdgeInsets.symmetric(horizontal: 0.5.w),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: Get.width * 0.035,),
                                  Expanded(
                                    child: TextFormField(
                                      onTap: () {},
                                      keyboardType: TextInputType.emailAddress,
                                      controller: password,
                                      style: const TextStyle(
                                        color: gradient1,
                                        fontFamily: montserratSemiBold,
                                        fontSize: 09
                                      ),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'New York Dancing Class',
                                          hintStyle: TextStyle(
                                              color: gradient1
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: Get.width * 0.05,),
                                ],
                              ),
                            ),
                          ),

                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     contentPadding: EdgeInsets.fromLTRB(Get.width * 0.02, Get.height * 0.0015, Get.width * 0.01, Get.height * 0.0015),
                        //     hintText: 'john11@gmail.com',
                        //     hintStyle: TextStyle(
                        //         color: gradient2,
                        //         fontSize: Get.height * 0.02,
                        //         fontFamily: montserratSemiBold
                        //     ),
                        //     border: InputBorder.none,
                        //
                        //   ),
                        //   style: TextStyle(
                        //       color: gradient2,
                        //       fontSize: Get.height * 0.02,
                        //       fontFamily: montserratSemiBold
                        //   ),
                        //
                        // ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.02,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.06,
                      vertical: Get.height * 0.02
                  ),
                  itemCount: itemList2.length, // Number of containers
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
                                  itemList2[index]['image'],
                                ),
                                    fit: BoxFit.contain
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
                              title: itemList2[index]['name'],
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
                    );
                  },
                ),

                SizedBox(height: Get.height * 0.05,),
                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 600), (){
                        Get.toNamed(kUploadBachataVideo);
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
                        Get.toNamed(kUploadBachataVideo);
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
