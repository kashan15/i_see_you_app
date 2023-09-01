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
import '../../../controller/home_screen_controller.dart';
import '../../../utils/image_utils.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscuretext = true;
  bool obscuretext2 = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
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
                SizedBox(height: Get.height * 0.15,),
                SizedBox(
                  height: Get.height * 0.125,
                  child: Image.asset(
                    ImageUtils.logo1,
                    // height: Get.height * 0.1,
                  ),
                ),

                TextWidget1(
                    textTitle: 'Login',
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
                /// Previous email textfield
                // SizedBox(height: Get.height * 0.01,),
                // Container(
                //  // padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075,),
                //   //padding: EdgeInsets.all(10),
                //   margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                //   height: Get.height * 0.065,
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
                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       // SizedBox(width: Get.width * 0.06,),
                //       Flexible(
                //           child: CustomTextField(
                //               textEditingController: email,
                //               title: 'john@gmail.com',
                //               textColor: gradient2,
                //               inputBorder: InputBorder.none,
                //               prefixIcon: const Icon(Icons.email, color: gradient1,),
                //               suffixIcon: GestureDetector(
                //                   onTap: () {
                //                     // setState(() {
                //                     //   obscuretext2 = !obscuretext2;
                //                     // });
                //                   },
                //                   child: Icon(obscuretext2
                //                       ? Icons.visibility_off
                //                       : Icons.visibility,
                //                       color: Colors.transparent,
                //                       // Colors.transparent
                //                   )
                //               )
                //
                //           )
                //
                //         // TextFormField(
                //         //   decoration: InputDecoration(
                //         //     contentPadding: EdgeInsets.fromLTRB(Get.width * 0.02, Get.height * 0.0015, Get.width * 0.01, Get.height * 0.0015),
                //         //     hintText: 'john11@gmail.com',
                //         //     hintStyle: TextStyle(
                //         //         color: gradient2,
                //         //         fontSize: Get.height * 0.02,
                //         //         fontFamily: montserratSemiBold
                //         //     ),
                //         //     border: InputBorder.none,
                //         //
                //         //   ),
                //         //   style: TextStyle(
                //         //       color: gradient2,
                //         //       fontSize: Get.height * 0.02,
                //         //       fontFamily: montserratSemiBold
                //         //   ),
                //         //
                //         // ),
                //       ),
                //     ],
                //   ),
                // ),

                SizedBox(height: Get.height * 0.01,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                  child: Material(
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
                          SizedBox(width: Get.width * 0.025,),
                          const Icon(Icons.email, color: gradient1,),
                          SizedBox(width: Get.width * 0.025,),
                          Expanded(
                            child: TextFormField(
                              onTap: () {},
                              keyboardType: TextInputType.emailAddress,
                              controller: email,
                              style: const TextStyle(
                                  color: gradient1,
                                fontFamily: montserratSemiBold,

                              ),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'john@gmail.com',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  )),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.05,),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: Get.height * 0.025,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.15,
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

                /// Previous password textfield
                // SizedBox(height: Get.height * 0.01,),
                // Container(
                //   //padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015,),
                //  // padding: EdgeInsets.all(10),
                //   margin: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                //   // height: Get.height * 0.065,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(Get.width * 0.1),
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
                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       // SizedBox(width: Get.width * 0.065,),
                //       // SizedBox(width: Get.width * 0.075,),
                //       Flexible(
                //           child: CustomTextField(
                //               textEditingController: password,
                //               textColor: gradient2,
                //               inputBorder: InputBorder.none,
                //               obscureText: obscuretext,
                //             prefixIcon: const Icon(Icons.password, color: gradient1,),
                //               suffixIcon: GestureDetector(
                //                   onTap: () {
                //                     setState(() {
                //                       obscuretext = !obscuretext;
                //                     });
                //                   },
                //                   child: Icon(obscuretext
                //                       ? Icons.visibility_off
                //                       : Icons.visibility,
                //                       color: gradient1
                //
                //                   )
                //               ),
                //
                //           )
                //
                //         // TextFormField(
                //         //   obscureText: obscuretext,
                //         //   decoration: InputDecoration(
                //         //     // contentPadding: EdgeInsets.all(10.0),
                //         //       contentPadding: EdgeInsets.fromLTRB(
                //         //           Get.width * 0.02,
                //         //           Get.height * 0.0125,
                //         //           Get.width * 0.01,
                //         //           Get.height * 0.0125
                //         //       ),
                //         //     hintText: '',
                //         //     hintStyle: TextStyle(
                //         //         color: gradient2,
                //         //         fontSize: Get.height * 0.02,
                //         //         fontFamily: montserratSemiBold
                //         //     ),
                //         //     border: InputBorder.none,
                //         //       suffixIcon: GestureDetector(
                //         //           onTap: () {
                //         //             setState(() {
                //         //               obscuretext = !obscuretext;
                //         //             });
                //         //           },
                //         //           child: Icon(obscuretext
                //         //               ? Icons.visibility_off
                //         //               : Icons.visibility,
                //         //               color: gradient1
                //         //
                //         //           )
                //         //       )
                //         //   ),
                //         //   style: TextStyle(
                //         //       color: gradient2,
                //         //       fontSize: Get.height * 0.02,
                //         //       fontFamily: montserratSemiBold
                //         //   ),
                //         // ),
                //       ),
                //     ],
                //   ),
                // ),



                SizedBox(height: Get.height * 0.01,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                  child: Material(
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
                          SizedBox(width: Get.width * 0.025,),
                          Image.asset(ImageUtils.key, color: gradient1,),
                          SizedBox(width: Get.width * 0.025,),
                          Expanded(
                            child: TextFormField(
                              onTap: () {},
                              keyboardType: TextInputType.emailAddress,
                              controller: password,
                              obscureText: obscuretext,
                              style: const TextStyle(
                                  color: gradient1,
                                fontFamily: montserratSemiBold
                              ),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                // suffixIcon: GestureDetector(
                                //     onTap: () {
                                //       setState(() {
                                //         obscuretext = !obscuretext;
                                //       });
                                //     },
                                //     child: Icon(obscuretext
                                //         ? Icons.visibility_off
                                //         : Icons.visibility,
                                //         color: gradient1
                                //
                                //     )
                                // ),
                              ),

                            ),
                          ),
                          SizedBox(width: Get.width * 0.025,),
                          GestureDetector(
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
                          ),
                          SizedBox(width: Get.width * 0.025,),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: Get.height * 0.02,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){},
                          child: TextWidget(
                            textTitle: 'Forgot Password?',
                            color: Colors.white,
                            fontFamily: montserratMedium,
                            fontSize: Get.height * 0.0175,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(height: Get.height * 0.04,),
                TextWidget(
                  textTitle: 'or continue with',
                  color: Colors.white,
                  fontFamily: montserratMedium,
                  fontSize: Get.height * 0.0175,
                ),
                SizedBox(height: Get.height * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(ImageUtils.facebook,
                          height: Get.height * 0.065,
                        ),
                      ),
                    ),
                    SizedBox(width: Get.width * 0.04,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(ImageUtils.google,
                          height: Get.height * 0.065,
                        ),
                      ),
                    ),
                    SizedBox(width: Get.width * 0.04,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(ImageUtils.apple,
                          height: Get.height * 0.065,
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: Get.height * 0.05,),

                BouncingButton(
                    onPressed: ()async{
                      Future.delayed(Duration(milliseconds: 500), (){
                        Get.toNamed(kIAmScreen);
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
                          "Signin",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )


                ),
                SizedBox(height: Get.height * 0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      textTitle: 'Dont have an account?',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.0175,
                    ),
                    SizedBox(width: Get.width * 0.02,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Get.toNamed(kSignupScreen);
                        },
                        child: TextWidget(
                          textTitle: 'signup',
                          color: Colors.white,
                          fontFamily: montserratMedium,
                          fontSize: Get.height * 0.0175,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                )


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
            ),
          )
      ),
    );
  }
}

