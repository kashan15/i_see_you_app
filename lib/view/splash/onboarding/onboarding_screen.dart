import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/utils/image_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../controller/onboarding_controller.dart';


class InitialDetailScreen extends GetView<InitialDetailScreenController> {
  InitialDetailScreen({Key? key}) : super(key: key);

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

  Widget _buildFullscreenImage() {
    return Image.asset(
      ImageUtils.splashImage,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
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
            key: controller.introKey,
            globalBackgroundColor: Colors.white,
            dotsDecorator: DotsDecorator(
                activeColor: Colors.black,
                color: Colors.orange.shade100
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
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.15,
                        child: Image.asset('assets/images/cocacola.png',
                        height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.375,
                        child: _buildImage('onboard1.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 18,
                        color: Colors.white
                    )),
              ),

              PageViewModel(
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.125,
                        child: Image.asset('assets/images/cocacola.png',
                          height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.25,
                        child: _buildImage('onboard2.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 18,
                        color: Colors.white
                    )),
              ),

              PageViewModel(
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.15,
                        child: Image.asset('assets/images/cocacola.png',
                          height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.325,
                        child: _buildImage('onboard3.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 18,
                        color: Colors.white
                    )),
              ),

              PageViewModel(
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.125,
                        child: Image.asset('assets/images/cocacola.png',
                          height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.25,
                        child: _buildImage('onboard4.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 18,
                        color: Colors.white
                    )),
              ),

              PageViewModel(
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.15,
                        child: Image.asset('assets/images/cocacola.png',
                          height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.425,
                        child: _buildImage('onboard5.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 18,
                        color: Colors.white
                    )),
              ),

              PageViewModel(
                image: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildFullscreenImage(),
                    Positioned(
                        top:Get.height*0.15,
                        child: Image.asset('assets/images/cocacola.png',
                          height: Get.height * 0.1,
                        )
                    ),
                    Positioned(
                        top:Get.height*0.425,
                        child: _buildImage('onboard6.png')),
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
                bodyWidget:const Text("Welcome to Moyen Xpress World's First African Brand That Connects with The Globe",
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
            skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.grey)),
            next: Text('Next', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
            done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
        ])
    );
  }
}

Widget _buildImage(String assetName, [double width = 325]) {
  return Image.asset('assets/images/$assetName', width: width);
}

