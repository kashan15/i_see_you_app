import 'package:flutter/material.dart';

class ImageUtils{

  /// Icons
  // static const String shoppingIcon = 'assets/images/shoppingIcon.png';
  static const  shippingIcon1 = 'assets/icons/shippingIcon1.png';

  /// Images
  static const String splashImage = 'assets/images/splashImage.png';
  static const String splashAnimated = 'assets/images/splashAnimated.gif';
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