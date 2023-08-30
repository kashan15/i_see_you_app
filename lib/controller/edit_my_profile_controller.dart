import 'package:flutter/material.dart';
import 'package:get/get.dart';



class EditMyProfileController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxString selectedCountryCode = RxString('US'); // Default country code

  void selectCountry(countryCode) {
    selectedCountryCode.value = countryCode.code;
  }

}