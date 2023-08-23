import 'package:flutter/material.dart';

class ImageUtils{

  /// Icons
  // static const String shoppingIcon = 'assets/images/shoppingIcon.png';
  static const  shippingIcon1 = 'assets/icons/shippingIcon1.png';
  static const  google = 'assets/icons/googleIcon.png';
  static const  facebook = 'assets/icons/facebookIcon.png';
  static const  apple = 'assets/icons/appleIcon.png';

  /// Images
  static const String splashImage = 'assets/images/splashImage.png';
  static const String logo = 'assets/images/logo.png';
  static const String logo1 = 'assets/images/logo1.png';
  static const String splashAnimated = 'assets/images/splashAnimated.gif';
  static const String animatedSplash2 = 'assets/images/animatedSplash2.gif';
  static const String onboard1 = 'assets/images/onboard1.png';

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