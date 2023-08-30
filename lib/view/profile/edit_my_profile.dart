import 'package:bouncing_button/bouncing_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import '../../../utils/image_utils.dart';
import '../../components/custom_textfield.dart';
import '../../components/text_widget.dart';
import '../../controller/edit_my_profile_controller.dart';
import '../../controller/upload_profile_picture_controller.dart';



class EditMyProfile extends GetView<EditMyProfileController> {
  EditMyProfile({Key? key}) : super(key: key);

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

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
                            text: 'My',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: montserratMedium,
                              fontSize: Get.height * 0.02,
                            ),
                            children: [
                              TextSpan(
                                text: '\nProfile',
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
                          title: 'Back',
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
                  horizontal: Get.width * 0.1
                ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Your Name',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'john',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Email address or mobile number',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'john@gmail.com',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'I am',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Online Class',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Dance Type',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Dancer',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Competitive',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Jazz',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Latin',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Bachata, Raggaeton',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Whats your level',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Jazz Advanced',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Whats your level',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Contemporary Advanced',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Whats your level',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Hiphop Advanced',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Whats your level',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Bachata Advanced',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Whats your level',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Reggaeton Advanced',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Dancer type',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Solo',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Where do you dance?',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Institute/School',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Where do you dance?',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'Online Class',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Your Location',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                  height: Get.height * 0.065,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: Get.width * 0.06,),
                      Flexible(
                          child: CustomTextField(
                            textEditingController: email,
                            textColor: gradient2,
                            title: 'East, NewYork, USA',
                            inputBorder: InputBorder.none,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textTitle: 'Enter Your Nationality',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.01,),
                GestureDetector(
                  onTap: (){
                    showCountryPicker(
                      context: context,
                      onSelect: (countryCode) {
                        controller.selectCountry(countryCode);
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                    margin: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                    height: Get.height * 0.065,
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
                    child: Row(
                          children: [
                            SizedBox(width: 8.0),
                            Text(controller.selectedCountryCode.value),
                          ],
                        ),
                      ),
                    ),
                SizedBox(height: Get.height * 0.075,),
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
                SizedBox(height: Get.height * 0.05,),


              ],
            ),
          )
      ),
    );

  }


}



