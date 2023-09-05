import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'color_utils.dart';
import 'font_utils.dart';

class CustomTheme {
  static final heading = TextStyle(
    fontSize: Get.height * 0.04,
    fontFamily: montserratSemiBold,
    color: Colors.white,
  );
  static final normalText = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: montserratMedium,
    color: Colors.white,
  );
  static final normalTextBlack = TextStyle(
    fontSize: Get.height * 0.02,
    fontFamily: montserratMedium,
    color: Colors.black,
  );
  static final shortText = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: montserratRegular,
    color: Colors.white,
  );
  static final shortBoldText = TextStyle(
    fontSize: Get.height * 0.015,
    fontFamily: montserratSemiBold,
    color: Colors.white,
  );

}
