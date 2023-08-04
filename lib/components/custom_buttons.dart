import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:i_see_you/components/text_widget.dart';


import '../utils/color_utils.dart';
import '../utils/font_utils.dart';



class CustomButton extends StatelessWidget {
  dynamic title;
  dynamic margin;
  dynamic padding;
  final Color? color;
  final Gradient? gradient;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? fontSize;
  final double? height;
  final double? width;
  // final double? borderWidth;
  dynamic fontFamily;
  final bool isSelected;
  void Function()? onTap;
  CustomButton({
    this.title,
    this.onTap,
    this.margin,
    this.padding,
    this.color,
    this.borderColor,
    this.gradient,
    this.borderRadius,
    this.textColor,
    this.fontSize,
    this.fontFamily,
    this.height,
    this.width,
    // this.borderWidth,
    required this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            gradient: gradient,
            border: Border.all(
              color: borderColor!,
              width: 2
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(0, 1)
              )
            ],
            borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: TextWidget(
            textTitle: title,
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

