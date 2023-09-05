import 'package:bouncing_button/bouncing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:i_see_you/components/custom_buttons.dart';
import 'package:i_see_you/components/text_widget.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/font_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:i_see_you/utils/theme.dart';
import 'package:like_button/like_button.dart';
import 'package:video_player/video_player.dart';
import '../../controller/home_screen_controller.dart';
import '../../utils/image_utils.dart';


// class MyPost1 extends GetView<HomeScreenController> {
//    MyPost1({Key? key}) : super(key: key);
//
//   bool tap = false;
//   @override
//   Widget build(BuildContext context){
//     return  Scaffold(
//       backgroundColor: Colors.black,
//         body: Stack(
//           children: [
//             Container(
//               alignment: Alignment(-1, 1),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   TextWidget1(
//                       textTitle: '@CreatedByKashan',
//                       style: CustomTheme.normalText
//                   ),
//                   SizedBox(height: Get.height * 0.01,),
//                   TextWidget1(
//                       textTitle: 'I See You post here',
//                       style: CustomTheme.normalText
//                   ),
//                   SizedBox(height: Get.height * 0.01,),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 alignment: Alignment(1, 1),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   //crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     SizedBox(height: Get.height * 0.1,),
//                      InkWell(
//                        onTap: (){
//                          tap == true;
//                        },
//                        child: tap == false ?
//                        Icon(
//                          Icons.thumb_up_alt_outlined,
//                          color: Colors.white,
//                          size: 30,
//                        ) :
//                        Icon(
//                          Icons.thumb_up_alt_outlined,
//                          color: Colors.blue,
//                          size: 30,
//                        )
//                      ),
//                     TextWidget(
//                       textTitle: '1.2M',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     SizedBox(height: Get.height * 0.025,),
//                     const Icon(Icons.favorite, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: '255',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     SizedBox(height: Get.height * 0.025,),
//                     const Icon(Icons.chat_bubble_outline, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Chat',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     SizedBox(height: Get.height * 0.025,),
//                     const Icon(Icons.video_call, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Video',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//
//                     SizedBox(height: Get.height * 0.025,),
//                     const Icon(Icons.call, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Call',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//
//                     SizedBox(height: Get.height * 0.025,),
//                     const Icon(Icons.card_giftcard, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Rewards',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     SizedBox(height: Get.height * 0.025,),
//
//                     const Icon(Icons.badge, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Achievements',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     SizedBox(height: Get.height * 0.025,),
//
//                     const Icon(Icons.currency_exchange_outlined, color: Colors.white, size: 30,),
//                     TextWidget(
//                       textTitle: 'Coins',
//                       color: Colors.white,
//                       fontFamily: montserratMedium,
//                       fontSize: Get.height * 0.015,
//                       // decoration: TextDecoration.underline,
//                     ),
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//     );
//   }
//
//
// }

class MyPost1 extends StatefulWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  State<MyPost1> createState() => _MyPost1State();
}

class _MyPost1State extends State<MyPost1> {

  bool tap1 = false;
  bool tap2 = false;
  final TextEditingController commentController = TextEditingController();
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/video1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown in portrait mode.
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: Center(
          child: FloatingActionButton(
            backgroundColor: Colors.grey.withOpacity(0.3),
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: Get.height * 0.2,
                    //   width: Get.width * 0.5,
                    //   child: Image.asset(ImageUtils.banner),
                    // ),
                    Container(
                      height: Get.height * 0.11,
                      width: Get.width * 0.7,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(image: AssetImage(
                          ImageUtils.banner1
                        ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01,),

                    Container(
                      height: Get.height * 0.05,
                      width: Get.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Get.width * 0.05
                        ),
                        border: Border.all(
                          color: Colors.white
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.025,
                              child: Image.asset(ImageUtils.commentIcon),
                            ),
                            SizedBox(width: Get.width * 0.02,),
                            // Expanded(
                            //     child: TextFormField(
                            //       onTap: () {},
                            //       keyboardType: TextInputType.emailAddress,
                            //       controller: commentController,
                            //       style: const TextStyle(
                            //         color: gradient1,
                            //         fontFamily: montserratBold,
                            //
                            //       ),
                            //       decoration: const InputDecoration(
                            //           border: InputBorder.none,
                            //           hintText: 'comment__________',
                            //           hintStyle: TextStyle(
                            //               color: Colors.white,
                            //             fontFamily: montserratBold,
                            //           )),
                            //     ),
                            // ),

                            Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    Text("comment________",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.height * 0.015,
                                        fontFamily: montserratBold,
                                    ),
                                  ),
                                ])
                            ),

                            // SizedBox(width: Get.width * 0.0,),
                            // const Icon(Icons.emoji_emotions_sharp, color: Colors.yellow,),
                            // SizedBox(width: Get.width * 0.01,),
                            // const Icon(Icons.favorite, color: Colors.red,),
                            // SizedBox(width: Get.width * 0.01,),
                            // const Icon(Icons.thumb_up, color: Colors.blueAccent,),

                            SizedBox(
                              height: Get.height * 0.1,
                              child: Image.asset(ImageUtils.groupIcons),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    TextWidget1(
                        textTitle: 'this is my first dancing video',
                        style: CustomTheme.normalText
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        const Icon(Icons.link, color: Colors.blueAccent,),
                        SizedBox(width: Get.width * 0.01,),
                        Text("choreographer/david-25785",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.height * 0.02,
                        fontFamily: montserratBold,
                        decoration: TextDecoration.underline
                      ),
                      ),
                        SizedBox(width: Get.width * 0.01,),
                        const Icon(Icons.note, color: Colors.blueAccent,),

                    ]),

                    SizedBox(height: Get.height * 0.01,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          const Icon(Icons.school, color: Colors.blueAccent,),
                          SizedBox(width: Get.width * 0.01,),
                          Text("NewYork Dancing School",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.height * 0.02,
                                fontFamily: montserratBold,
                                // decoration: TextDecoration.underline
                            ),
                          ),

                        ]),
                    SizedBox(height: Get.height * 0.01,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: Get.width * 0.05,
                          backgroundColor: Colors.red,
                          backgroundImage: AssetImage(ImageUtils.profile),
                        ),
                        SizedBox(width: Get.width * 0.02,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("John",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.height * 0.015,
                                  fontFamily: montserratBold,
                              ),
                            ),
                            Text("individual verified",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.height * 0.008,
                                fontFamily: montserratBold,
                              ),
                            ),
                            SizedBox(height: Get.height * 0.005,),
                            Text("Jazz Dancer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.height * 0.01,
                                fontFamily: montserratBold,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: Get.width * 0.05,),
                         Expanded(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               SizedBox(
                                 height: Get.height * 0.045,
                                   child:
                                   Image.asset(ImageUtils.followIcon)),
                               SizedBox(width: Get.width * 0.025,),
                               SizedBox(
                                   height: Get.height * 0.045,
                                   child:
                                   Image.asset(ImageUtils.visibleIcon)),
                               SizedBox(width: Get.width * 0.035,),
                               SizedBox(
                                   height: Get.height * 0.03,
                                   child:
                                   Image.asset(ImageUtils.flag)),

                             ],
                           ),
                         )

                        // Expanded(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children:[
                        //       Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Icon(Icons.follow_the_signs, color: Colors.red,),
                        //         Text("Follow",
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: Get.height * 0.0125,
                        //             fontFamily: montserratMedium,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ])
                        //   ),
                        // //SizedBox(width: Get.width * 0.01,),
                        // Expanded(
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Icon(Icons.visibility_rounded, color: Colors.red,),
                        //         Text("Profile",
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: Get.height * 0.0125,
                        //             fontFamily: montserratMedium,
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        // ),
                        // //SizedBox(width: Get.width * 0.01,),
                        // Expanded(
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Icon(Icons.flag, color: Colors.blueAccent,),
                        //         Text("America",
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: Get.height * 0.0125,
                        //             fontFamily: montserratMedium,
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        // ),

                      ],
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    Text("#jazzdancer #dancer #dancinggirl #dancevideo #dancingonthefloor",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.height * 0.0125,
                        fontFamily: montserratBold,
                        // decoration: TextDecoration.underline
                      ),
                    ),

                    SizedBox(height: Get.height * 0.025,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment(1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: Get.height * 0.05,),
                    InkWell(
                        onTap: (){
                          setState(() {
                            tap1 =! tap1;
                          });
                        },
                        child: tap1 == false ?
                        Image.asset(ImageUtils.likeIcon1) :
                        Image.asset(ImageUtils.likeIcon1)
                    ),
                    TextWidget(
                      textTitle: '1.2M',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    InkWell(
                        onTap: (){
                          setState(() {
                            tap2 =! tap2;
                          });
                        },
                        child: tap2 == false ?
                        Image.asset(ImageUtils.favIcon1) :
                        Image.asset(ImageUtils.favIcon1)
                    ),
                    TextWidget(
                      textTitle: '255',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    Image.asset(ImageUtils.chatIcon),
                    TextWidget(
                      textTitle: 'Chat',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),
                    SizedBox(height: Get.height * 0.01,),
                    Image.asset(ImageUtils.videoIcon),
                    TextWidget(
                      textTitle: 'Video',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),

                    SizedBox(height: Get.height * 0.01,),
                    Image.asset(ImageUtils.callIcon),
                    TextWidget(
                      textTitle: 'Call',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),

                    SizedBox(height: Get.height * 0.01,),
                    Image.asset(ImageUtils.rewardIcon),
                    TextWidget(
                      textTitle: 'Rewards',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),
                    SizedBox(height: Get.height * 0.01,),

                    Image.asset(ImageUtils.badgeIcon),
                    TextWidget(
                      textTitle: 'Achievements',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),
                    SizedBox(height: Get.height * 0.01,),

                    Image.asset(ImageUtils.coinIcon),
                    TextWidget(
                      textTitle: 'Coins',
                      color: Colors.white,
                      fontFamily: montserratMedium,
                      fontSize: Get.height * 0.015,
                      // decoration: TextDecoration.underline,
                    ),

                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

