import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreenController extends GetxController
    with GetSingleTickerProviderStateMixin
{
  late BuildContext globalContext;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final myPageController = PageController(initialPage: 0);

}