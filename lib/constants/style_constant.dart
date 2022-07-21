import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/fonts_constant.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle regularText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? fontConstants.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ColorConstants.whiteColor,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle semiBoldText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? fontConstants.semiBold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? ColorConstants.whiteColor,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle boldText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? fontConstants.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? ColorConstants.whiteColor,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}
