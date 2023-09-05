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
import 'package:i_see_you/view/home/my_post_1.dart';
import 'package:i_see_you/view/home/my_post_2.dart';
import 'package:i_see_you/view/home/my_post_3.dart';
import '../../controller/home_screen_controller.dart';
import '../../utils/image_utils.dart';


class Home extends GetView<HomeScreenController> {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: PageView(
        controller: controller.myPageController,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          MyPost4(),
          MyPost5(),
          MyPost6(),
          MyPost7(),
          MyPost8(),
          MyPost9(),
          MyPost10(),
        ],
      )
    );
  }


}
