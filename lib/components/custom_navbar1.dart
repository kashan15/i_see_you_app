import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_see_you/utils/image_utils.dart';
import 'package:i_see_you/view/home/home.dart';
import 'package:i_see_you/view/home/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controller/navbar_controller.dart';
import '../utils/color_utils.dart';


class MyPersistentBottomNavBar extends StatelessWidget{
  MyPersistentBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const BottomNavBar(),
    );

  }
}

class BottomNavBar extends GetView<NavBarController> {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller1;
    controller1 = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        Home(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
        HomeScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          iconSize: 25,
          title: ("Home"),
          activeColorPrimary: gradientIconColor1,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          iconSize: 25,
          title: ("Categories"),
          activeColorPrimary: gradientIconColor1,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(ImageUtils.homeIcon,),
          activeColorPrimary: gradientIconColor1,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          iconSize: 25,
          title: ("Notifications"),
          activeColorPrimary: gradientIconColor1,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.account_circle_outlined),
          iconSize: 25,
          title: ("Sign in"),
          activeColorPrimary: gradientIconColor1,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return  Scaffold(
      key: controller.scaffoldKey,
      body: PersistentTabView(
        context,
        controller: controller1,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
        true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
        true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(0, -1), // Controls the position of the shadow
              blurRadius: 6.0, // Controls the size/blur of the shadow
            ),
          ],
          borderRadius: BorderRadius.circular(0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
        NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );

  }
}












