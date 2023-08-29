import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/theme.dart';

import '../../../controller/home_screen_controller.dart';
import '../../../utils/image_utils.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obscuretext = true;
  bool obscuretext2 = true;
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                SizedBox(height: Get.height * 0.15,),
                SizedBox(
                  height: Get.height * 0.125,
                  child: Image.asset(
                    ImageUtils.logo1,
                    // height: Get.height * 0.1,
                  ),
                ),

                TextWidget1(
                    textTitle: 'Lets you in',
                    style: CustomTheme.heading
                ),
                SizedBox(height: Get.height * 0.05,),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.15
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        TextWidget1(
                          textTitle: 'Email address or mobile number',
                          textAlign: TextAlign.start,
                          style: CustomTheme.shortBoldText,
                        ),
                      ]),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
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
                      SizedBox(width: Get.width * 0.05,),
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(Get.width * 0.02, Get.height * 0.0015, Get.width * 0.01, Get.height * 0.0015),
                            hintText: 'john11@gmail.com',
                            hintStyle: TextStyle(
                                color: gradient2,
                                fontSize: Get.height * 0.02,
                                fontFamily: montserratSemiBold
                            ),
                            border: InputBorder.none,

                          ),
                          style: TextStyle(
                              color: gradient2,
                              fontSize: Get.height * 0.02,
                              fontFamily: montserratSemiBold
                          ),

                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.025,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.15
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        TextWidget1(
                          textTitle: 'Password',
                          textAlign: TextAlign.start,
                          style: CustomTheme.shortBoldText,
                        ),
                      ]),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
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
                      SizedBox(width: Get.width * 0.05,),
                      Flexible(
                        child: TextFormField(
                          obscureText: obscuretext,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.all(10.0),
                              contentPadding: EdgeInsets.fromLTRB(
                                  Get.width * 0.02,
                                  Get.height * 0.0125,
                                  Get.width * 0.01,
                                  Get.height * 0.0125
                              ),
                            hintText: '',
                            hintStyle: TextStyle(
                                color: gradient2,
                                fontSize: Get.height * 0.02,
                                fontFamily: montserratSemiBold
                            ),
                            border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscuretext = !obscuretext;
                                    });
                                  },
                                  child: Icon(obscuretext
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                      color: gradient1

                                  )
                              )
                          ),
                          style: TextStyle(
                              color: gradient2,
                              fontSize: Get.height * 0.02,
                              fontFamily: montserratSemiBold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.025,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.15
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        TextWidget1(
                          textTitle: 'Confirm Password',
                          textAlign: TextAlign.start,
                          style: CustomTheme.shortBoldText,
                        ),
                      ]),
                ),
                SizedBox(height: Get.height * 0.01,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
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
                      SizedBox(width: Get.width * 0.05,),
                      Flexible(
                        child: TextFormField(
                          obscureText: obscuretext2,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.all(10.0),
                              contentPadding: EdgeInsets.fromLTRB(
                                  Get.width * 0.02,
                                  Get.height * 0.0125,
                                  Get.width * 0.01,
                                  Get.height * 0.0125
                              ),
                            hintText: '',
                            hintStyle: TextStyle(
                                color: gradient2,
                                fontSize: Get.height * 0.02,
                                fontFamily: montserratSemiBold
                            ),
                            border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscuretext2 = !obscuretext2;
                                    });
                                  },
                                  child: Icon(obscuretext2
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                      color: gradient1

                                  )
                              )
                          ),
                          style: TextStyle(
                              color: gradient2,
                              fontSize: Get.height * 0.02,
                              fontFamily: montserratSemiBold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.125,),

                BouncingButton(
                    onPressed: ()async{
                      // Future.delayed(Duration(seconds: 1), (){
                      //   Get.toNamed(kSignupScreen);
                      // });
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


              ],
            )
        ),
      ),
    );
  }
}
