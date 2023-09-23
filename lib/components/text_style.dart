import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle title = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: AppColor.title);

  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: AppColor.hint);

  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      color: AppColor.title,
      fontWeight: FontWeight.w400);

  static const TextStyle mainButton = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 15,
      color: AppColor.mainButtonText,
      fontWeight: FontWeight.w500);
  static const TextStyle primaryThemeTextStyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 15,
      color: AppColor.primaryColor,
      fontWeight: FontWeight.w500);
}
