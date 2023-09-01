import 'package:flutter/material.dart';

class ImageUtils{

  /// Icons
  // static const String shoppingIcon = 'assets/images/shoppingIcon.png';
  static const  shippingIcon1 = 'assets/icons/shippingIcon1.png';
  static const  google = 'assets/icons/googleIcon.png';
  static const  facebook = 'assets/icons/facebookIcon.png';
  static const  apple = 'assets/icons/appleIcon.png';
  static const  cameraIcon = 'assets/icons/cameraIcon.png';
  static const  galleryIcon = 'assets/icons/galleryIcon.png';
  static const  uploadIcon = 'assets/icons/uploadIcon.png';
  static const  homeIcon = 'assets/icons/homeIcon.png';
  static const  favoriteIcon = 'assets/icons/favoriteIcon.png';
  static const  homeIcon2 = 'assets/icons/homeIcon2.png';
  static const  searchIcon = 'assets/icons/searchIcon.png';
  static const  checkIconSelected = 'assets/icons/checkIcon1.png';
  static const  checkIconUnselected = 'assets/icons/checkIcon2.png';
  static const  key = 'assets/icons/key.png';

  /// Images
  static const String splashImage = 'assets/images/splashImage.png';
  static const String newBackground1 = 'assets/images/newBackground1.gif';
  static const String logo = 'assets/images/logo.png';
  static const String logo1 = 'assets/images/logo1.png';
  static const String splashAnimated2 = 'assets/images/splashAnimated2.gif';
  static const String newSplash = 'assets/images/newSplash.gif';
  static const String animatedSplash2 = 'assets/images/animatedSplash2.gif';
  static const String onboard1 = 'assets/images/onboard1.png';
  static const String onboard2 = 'assets/images/onboard2.png';
  static const String onboard3 = 'assets/images/onboard3.png';
  static const String onboard4 = 'assets/images/onboard4.png';
  static const String onboard5 = 'assets/images/onboard5.png';
  static const String onboard6 = 'assets/images/onboard6.png';
  static const String onboardAnimated1 = 'assets/images/onboardingAnimated1.gif';
  // static const String a1 = 'assets/images/a1.jpg';
  // static const String a2 = 'assets/images/a2.jpg';
  // static const String a3 = 'assets/images/a3.jpg';
  // static const String a4 = 'assets/images/a4.jpg';
  // static const String a5 = 'assets/images/a5.jpg';
  // static const String a6 = 'assets/images/a6.jpg';
  // static const String a7 = 'assets/images/a7.jpg';
  // static const String a8 = 'assets/images/a8.jpeg';
  // static const String a9 = 'assets/images/a9.jpg';
  // static const String a10 = 'assets/images/a10.jpg';
  // static const String a11 = 'assets/images/a11.jpg';
  // static const String a12 = 'assets/images/a12.jpg';
  // static const String a13 = 'assets/images/a13.jpg';
  static const String a14 = 'assets/images/a14.jpg';
  static const String b1 = 'assets/images/b1.png';
  static const String b2 = 'assets/images/b2.png';
  static const String b3 = 'assets/images/b3.png';
  static const String b4 = 'assets/images/b4.png';
  static const String c1 = 'assets/images/c1.png';
  static const String c2 = 'assets/images/c2.png';
  static const String c3 = 'assets/images/c3.png';
  static const String c4 = 'assets/images/c4.png';
  static const String c5 = 'assets/images/c5.png';
  static const String c6 = 'assets/images/c6.png';
  static const String c7 = 'assets/images/c7.png';
  static const String c8 = 'assets/images/c8.png';
  static const String c9 = 'assets/images/c9.png';
  static const String c10 = 'assets/images/c10.png';
  static const String c11 = 'assets/images/c11.png';
  static const String danceLocationPic1 = 'assets/images/danceLocationPic1.png';
  static const String danceLocationPic2 = 'assets/images/danceLocationPic2.png';
  static const String dancer1 = 'assets/images/dancer1.png';
  static const String dancer2 = 'assets/images/dancer2.png';
  static const String dancer3 = 'assets/images/dancer3.png';
  static const String dancer4 = 'assets/images/dancer4.png';
  static const String dancer5 = 'assets/images/dancer5.png';
  static const String wellness1 = 'assets/images/wellness1.png';
  static const String wellness2 = 'assets/images/wellness2.png';
  static const String wellness3 = 'assets/images/wellness3.png';
  static const String wellness4 = 'assets/images/wellness4.png';
  static const String media1 = 'assets/images/media1.png';
  static const String media2 = 'assets/images/media2.png';
  static const String media3 = 'assets/images/media3.png';
  static const String media4 = 'assets/images/media4.png';
  static const String level1 = 'assets/images/level1.png';
  static const String level2 = 'assets/images/level2.png';
  static const String level3 = 'assets/images/level3.png';
  static const String level4 = 'assets/images/level4.png';
  static const String level5 = 'assets/images/level5.png';

}

Widget genericAsset({var asset,Color? iconColor,BoxFit? boxFit,}){
  return asset.runtimeType != IconData
      ? Image(
    image: AssetImage(asset,),
    fit: boxFit ?? BoxFit.cover,
    //height: iconHeight,
  )
      : Icon(asset,color:iconColor);
}