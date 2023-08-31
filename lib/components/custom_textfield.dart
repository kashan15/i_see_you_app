import 'package:flutter/material.dart';
import 'package:i_see_you/utils/font_utils.dart';

// class CustomTextField extends StatelessWidget {
//
//   TextEditingController? textEditingController;
//   Widget? suffixIcon;
//   Widget? prefixIcon;
//   String? Function(String?)? validation;
//   String? title;
//   TextInputType? inputType;
//   final bool obscureText;
//   InputBorder? inputBorder;
//   Color? textColor;
//   CustomTextField({
//     Key? key,
//     this.textEditingController,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.title,
//     this.validation,
//     this.inputType,
//     this.inputBorder,
//     this.textColor,
//     this.obscureText = false,
//
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator:validation,
//       controller: textEditingController,
//       keyboardType: inputType,
//       obscureText: obscureText,
//       style: TextStyle(
//           color: textColor,
//           fontFamily: montserratSemiBold
//       ),
//       decoration: InputDecoration(
//         border: InputBorder.none,
//         prefixIcon:prefixIcon,
//         suffixIcon: suffixIcon,
//         hintStyle: TextStyle(
//             color: textColor,
//         ),
//         hintText: title,
//       ),
//     );
//   }
// }

class CustomTextField extends StatelessWidget {

  TextEditingController? textEditingController;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validation;
  String? title;
  TextInputType? inputType;
  final bool obscureText;
  InputBorder? inputBorder;
  Color? textColor;
  CustomTextField({
    Key? key,
    this.textEditingController,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    this.validation,
    this.inputType,
    this.inputBorder,
    this.textColor,
    this.obscureText = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validation,
      controller: textEditingController,
      keyboardType: inputType,
      obscureText: obscureText,
      style: TextStyle(
          color: textColor,
          fontFamily: montserratSemiBold
      ),
      decoration: InputDecoration(
          prefixIcon:prefixIcon,
          suffixIcon: suffixIcon,
          hintText: title
      ),
    );
  }
}

class CustomTextField1 extends StatelessWidget {

  TextEditingController? textEditingController;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? Function(String?)? validation;
  String? title;
  TextInputType? inputType;
  final bool obscureText;
  InputBorder? inputBorder;
  double? fontSize;
  double? hintFontSize;
  Color? textColor;
  String? fontFamily;
  // dynamic textAlign;
  // TextAlignVertical? textAlignVertical;
  CustomTextField1({
    Key? key,
    this.textEditingController,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    this.validation,
    this.inputType,
    this.inputBorder,
    this.textColor,
    this.fontSize,
    this.hintFontSize,
    this.fontFamily,
    // this.textAlign,
    // this.textAlignVertical,
    this.obscureText = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validation,
      controller: textEditingController,
      keyboardType: inputType,
      obscureText: obscureText,
      // textAlign: textAlign,
      // textAlignVertical: textAlignVertical,
      style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        // isCollapsed: false,
        prefixIcon:prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
            color: textColor
        ),
        hintText: title,
      ),
    );
  }
}