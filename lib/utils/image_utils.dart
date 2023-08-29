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

  /// Images
  static const String splashImage = 'assets/images/splashImage.png';
  static const String logo = 'assets/images/logo.png';
  static const String logo1 = 'assets/images/logo1.png';
  static const String splashAnimated = 'assets/images/splashAnimated.gif';
  static const String newSplash = 'assets/images/newSplash.gif';
  static const String animatedSplash2 = 'assets/images/animatedSplash2.gif';
  static const String onboard1 = 'assets/images/onboard1.png';
  static const String onboard2 = 'assets/images/onboard2.png';
  static const String onboard3 = 'assets/images/onboard3.png';
  static const String onboard4 = 'assets/images/onboard4.png';
  static const String onboard5 = 'assets/images/onboard5.png';
  static const String onboard6 = 'assets/images/onboard6.png';
  static const String a1 = 'assets/images/a1.jpg';
  static const String a2 = 'assets/images/a2.jpg';
  static const String a3 = 'assets/images/a3.jpg';
  static const String a4 = 'assets/images/a4.jpg';
  static const String a5 = 'assets/images/a5.jpg';
  static const String a6 = 'assets/images/a6.jpg';
  static const String a7 = 'assets/images/a7.jpg';
  static const String a8 = 'assets/images/a8.jpeg';
  static const String a9 = 'assets/images/a9.jpg';
  static const String a10 = 'assets/images/a10.jpg';
  static const String a11 = 'assets/images/a11.jpg';
  static const String a12 = 'assets/images/a12.jpg';
  static const String a13 = 'assets/images/a13.jpg';
  static const String a14 = 'assets/images/a14.jpg';
  static const String b1 = 'assets/images/b1.png';
  static const String b2 = 'assets/images/b2.png';
  static const String b3 = 'assets/images/b3.png';
  static const String b4 = 'assets/images/b4.png';

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