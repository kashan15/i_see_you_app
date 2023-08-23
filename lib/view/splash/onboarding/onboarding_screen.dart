import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/utils/image_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../controller/onboarding_controller.dart';


// class OnboardScreen extends GetView<OnboardScreenController> {
//   OnboardScreen({Key? key}) : super(key: key);
//
//   String obj = '';
//
//   var pageDecoration = const PageDecoration(
//       // titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//       // bodyTextStyle:  TextStyle(fontSize: 19.0),
//       bodyPadding:EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       fullScreen: true,
//       imageFlex: 1,
//       bodyFlex: 1,
//       // pageColor: Colors.white,
//       imagePadding: EdgeInsets.only(top: 30)
//   );
//
//
//
//
//
//   var pageDecoration2 = const PageDecoration(
//     titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//     bodyTextStyle:  TextStyle(fontSize: 19.0),
//     bodyPadding:EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//     imageFlex: 0,
//     bodyFlex: 0,
//     imagePadding: EdgeInsets.only(top: 0),
//     // pageColor: Colors.white,
//
//   );
//
//   Widget _buildFullscreenImage(BuildContext context) {
//     return
//       Image.asset(
//       ImageUtils.splashImage,
//       fit: BoxFit.cover,
//       height: double.infinity,
//       width: double.infinity,
//       alignment: Alignment.center,
//     );
//
//   }
//
//   Widget? _topLogo(BuildContext context){
//     return testFunction(context);
//   }
//
//  testFunction(BuildContext context){
//     if(obj.isNotEmpty){
//       Future.delayed(Duration(seconds: 2), () {
//         Positioned(
//             top:Get.height*0.15,
//             child:
//             Image.asset('assets/images/cocacola.png',
//               height: Get.height * 0.1,
//             )
//         );
//       });
//     }
// }
//
//
//   // Future backgroundImage() async{
//   //   Image.asset(
//   //     ImageUtils.splashImage,
//   //     fit: BoxFit.cover,
//   //     height: double.infinity,
//   //     width: double.infinity,
//   //     alignment: Alignment.center,
//   //   );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//
//     // const bodyStyle = TextStyle(fontSize: 19.0,
//     //     color: Colors.white
//     // );
//     //
//     // const pageDecoration = PageDecoration(
//     //   titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,
//     //       color: Colors.white
//     //   ),
//     //   bodyTextStyle: bodyStyle,
//     //   bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//     //   pageColor: Colors.transparent,
//     //   imagePadding: EdgeInsets.zero,
//     // );
//
//     return Scaffold(
//       //backgroundColor: Colors.brown.withOpacity(0.3),
//         body:Stack(
//           children:[
//             Container(
//               height: Get.height,
//               width: Get.width,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(image: AssetImage(ImageUtils.splashImage),
//                       fit: BoxFit.fill
//                   )
//               ),
//             ),
//             IntroductionScreen(
//             key: controller.introKey,
//             globalBackgroundColor: Colors.white,
//             dotsDecorator: const DotsDecorator(
//                 activeColor: Colors.redAccent,
//                 color: Colors.white
//             ),
//
//             pages: [
//               // PageViewModel(
//               //   image: Container(
//               //     margin: EdgeInsets.only(top: 100),
//               //     child: Stack(
//               //       children: [
//               //         Container(),
//               //         Center(child: _buildImage('onboardPic1.png')),
//               //         Container(
//               //           margin: const EdgeInsets.only(top: 90,right: 40),
//               //         )
//               //       ],
//               //     ),
//               //
//               //   ),
//               //   decoration: pageDecoration,
//               //   titleWidget: Text("Welcome",style: TextStyle(
//               //       fontSize: 35,
//               //       color:Colors.green  )),
//               //   bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
//               //       textAlign: TextAlign.center,
//               //       style:  TextStyle(fontSize: 18,
//               //       color: Colors.white
//               //       )),
//               // ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.15,
//                         child:
//                         Image.asset('assets/images/cocacola.png',
//                         height: Get.height * 0.1,
//                         )
//                     ),
//                     // _topLogo(context),
//                     Positioned(
//                         top:Get.height*0.375,
//                         child: _buildImage('onboard1.png', Get.width * 0.85)),
//
//                   ],
//                 ),
//                  decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.25,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Join the Virtual dance competition\nand show off your moves\nto the world.",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.125,
//                         child: Image.asset('assets/images/cocacola.png',
//                           height: Get.height * 0.1,
//                         )
//                     ),
//                     Positioned(
//                         top:Get.height*0.25,
//                         child: _buildImage('onboard2.png',Get.width * 0.8)),
//                   ],
//                 ),
//                 decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.275,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Take your chance to shine the\nworld with your dance moves!",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.15,
//                         child: Image.asset('assets/images/cocacola.png',
//                           height: Get.height * 0.1,
//                         )
//                     ),
//                     Positioned(
//                         top:Get.height*0.325,
//                         child: _buildImage('onboard3.png',Get.width * 0.85)),
//                   ],
//                 ),
//                 decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.25,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Get ready to groove and win big prizes\nwith our dance competition App! ",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.125,
//                         child: Image.asset('assets/images/cocacola.png',
//                           height: Get.height * 0.1,
//                         )
//                     ),
//                     Positioned(
//                         top:Get.height*0.26,
//                         child: _buildImage('onboard4.png',Get.width * 0.8)),
//                   ],
//                 ),
//                 decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.275,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Unleash your inner dancer and compete\nwith the world!",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.15,
//                         child: Image.asset('assets/images/cocacola.png',
//                           height: Get.height * 0.1,
//                         )
//                     ),
//                     Positioned(
//                         top:Get.height*0.425,
//                         child: _buildImage('onboard5.png',Get.width * 0.85)),
//                   ],
//                 ),
//                 decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.25,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Let's see your moves in the competition,\nwhere the best dancers will be rewarded!",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//
//               PageViewModel(
//                 image:
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     _buildFullscreenImage(context),
//                     Positioned(
//                         top:Get.height*0.15,
//                         child: Image.asset('assets/images/cocacola.png',
//                           height: Get.height * 0.1,
//                         )
//                     ),
//                     Positioned(
//                         top:Get.height*0.425,
//                         child: _buildImage('onboard6.png',Get.width * 0.85)),
//                   ],
//                 ),
//                 decoration: pageDecoration,
//                 titleWidget: SizedBox(
//                   height: Get.height * 0.25,
//                   child: Text("Welcome",style: TextStyle(
//                       fontSize: 5,
//                       color: Colors.transparent
//                   )
//                   ),
//                 ),
//                 bodyWidget:const Text("Join our dance competition app &\ncompete for the ultimate\ntitle of champion! ",
//                     textAlign: TextAlign.center,
//                     style:  TextStyle(fontSize: 18,
//                         color: Colors.white
//                     )),
//               ),
//             ],
//             onDone: (){
//               Get.offAllNamed(kHomeScreen);
//             },
//             onSkip: (){
//               Get.offAllNamed(kHomeScreen);
//             },
//             showSkipButton: true,
//             skipOrBackFlex: 0,
//             nextFlex: 0,
//             showBackButton: false,
//             back: const Icon(Icons.arrow_back),
//             skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.yellow)),
//             next: Text('Next', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
//             done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
//             curve: Curves.fastLinearToSlowEaseIn,
//           ),
//         ])
//     );
//   }
// }

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  String obj = '';

  var pageDecoration = const PageDecoration(
    // titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    // bodyTextStyle:  TextStyle(fontSize: 19.0),
      bodyPadding:EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      fullScreen: true,
      imageFlex: 1,
      bodyFlex: 1,
      // pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 30)
  );





  var pageDecoration2 = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyTextStyle:  TextStyle(fontSize: 19.0),
    bodyPadding:EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    imageFlex: 0,
    bodyFlex: 0,
    imagePadding: EdgeInsets.only(top: 0),
    // pageColor: Colors.white,

  );

  Widget _buildFullscreenImage(BuildContext context) {
    return
      // Image.asset(
      //   ImageUtils.splashImage,
      //   fit: BoxFit.cover,
      //   height: double.infinity,
      //   width: double.infinity,
      //   alignment: Alignment.center,
      // );
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageUtils.splashImage),
                fit: BoxFit.cover),
          ),
      );

  }

  Widget? _topLogo(BuildContext context){
    return testFunction(context);
  }

  testFunction(BuildContext context){
    if(obj.isNotEmpty){
      Future.delayed(Duration(seconds: 2), () {
        Positioned(
            top:Get.height*0.15,
            child:
            Image.asset('assets/images/cocacola.png',
              height: Get.height * 0.1,
            )
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    // const bodyStyle = TextStyle(fontSize: 19.0,
    //     color: Colors.white
    // );
    //
    // const pageDecoration = PageDecoration(
    //   titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,
    //       color: Colors.white
    //   ),
    //   bodyTextStyle: bodyStyle,
    //   bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    //   pageColor: Colors.transparent,
    //   imagePadding: EdgeInsets.zero,
    // );

    return Scaffold(
      //backgroundColor: Colors.brown.withOpacity(0.3),
        body:Stack(
            children:[
              Container(
                height: Get.height,
                width: Get.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(ImageUtils.splashImage),
                        fit: BoxFit.fill
                    )
                ),
              ),
              IntroductionScreen(
                key: introKey,
                globalBackgroundColor: Colors.white,
                dotsDecorator: const DotsDecorator(
                    activeColor: Colors.redAccent,
                    color: Colors.white
                ),

                pages: [
                  // PageViewModel(
                  //   image: Container(
                  //     margin: EdgeInsets.only(top: 100),
                  //     child: Stack(
                  //       children: [
                  //         Container(),
                  //         Center(child: _buildImage('onboardPic1.png')),
                  //         Container(
                  //           margin: const EdgeInsets.only(top: 90,right: 40),
                  //         )
                  //       ],
                  //     ),
                  //
                  //   ),
                  //   decoration: pageDecoration,
                  //   titleWidget: Text("Welcome",style: TextStyle(
                  //       fontSize: 35,
                  //       color:Colors.green  )),
                  //   bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                  //       textAlign: TextAlign.center,
                  //       style:  TextStyle(fontSize: 18,
                  //       color: Colors.white
                  //       )),
                  // ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.15,
                            child:
                            Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        // _topLogo(context),
                        Positioned(
                            top:Get.height*0.375,
                            child: _buildImage('onboard1.png', Get.width * 0.85)),

                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.25,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Join the Virtual dance competition\nand show off your moves\nto the world.",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.125,
                            child: Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        Positioned(
                            top:Get.height*0.25,
                            child: _buildImage('onboard2.png',Get.width * 0.8)),
                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.275,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Take your chance to shine the\nworld with your dance moves!",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.15,
                            child: Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        Positioned(
                            top:Get.height*0.325,
                            child: _buildImage('onboard3.png',Get.width * 0.85)),
                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.25,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Get ready to groove and win big prizes\nwith our dance competition App! ",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.125,
                            child: Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        Positioned(
                            top:Get.height*0.26,
                            child: _buildImage('onboard4.png',Get.width * 0.8)),
                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.275,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Unleash your inner dancer and compete\nwith the world!",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.15,
                            child: Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        Positioned(
                            top:Get.height*0.425,
                            child: _buildImage('onboard5.png',Get.width * 0.85)),
                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.25,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Let's see your moves in the competition,\nwhere the best dancers will be rewarded!",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),

                  PageViewModel(
                    image:
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildFullscreenImage(context),
                        Positioned(
                            top:Get.height*0.15,
                            child: Image.asset('assets/images/cocacola.png',
                              height: Get.height * 0.1,
                            )
                        ),
                        Positioned(
                            top:Get.height*0.425,
                            child: _buildImage('onboard6.png',Get.width * 0.85)),
                      ],
                    ),
                    decoration: pageDecoration,
                    titleWidget: SizedBox(
                      height: Get.height * 0.25,
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 5,
                          color: Colors.transparent
                      )
                      ),
                    ),
                    bodyWidget:const Text("Join our dance competition app &\ncompete for the ultimate\ntitle of champion! ",
                        textAlign: TextAlign.center,
                        style:  TextStyle(fontSize: 18,
                            color: Colors.white
                        )),
                  ),
                ],
                onDone: (){
                  Get.offAllNamed(kHomeScreen);
                },
                onSkip: (){
                  Get.offAllNamed(kHomeScreen);
                },
                showSkipButton: true,
                skipOrBackFlex: 0,
                nextFlex: 0,
                showBackButton: false,
                back: const Icon(Icons.arrow_back),
                skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.yellow)),
                next: Text('Next', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
                done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
                curve: Curves.fastLinearToSlowEaseIn,
              ),
            ])
    );
  }
}


Widget _buildImage(String assetName, [double width = 0]) {
  return Image.asset('assets/images/$assetName', width: width);
}

