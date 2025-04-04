import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle title = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: AppColors.title);

  static const TextStyle prodcutTitle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 16,
      color: AppColors.title,
      fontWeight: FontWeight.normal);

  static const TextStyle prodTimer = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      color: Colors.blue,
      fontWeight: FontWeight.normal);

  static const TextStyle amazingPart = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 22,
      color: AppColors.amazingColor,
      fontWeight: FontWeight.w700);

  static TextStyle oldPrice = const TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: AppColors.oldPrice,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
    decorationThickness: 5,
  );

  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: AppColors.hint);

  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 14,
      color: AppColors.title,
      fontWeight: FontWeight.w400);
  static const TextStyle btnNavActiveStyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      color: AppColors.btmNavActiveItem,
      fontWeight: FontWeight.w400);
  static const TextStyle btnNavInActiveStyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      color: AppColors.btmNavInActiveItem,
      fontWeight: FontWeight.w400);

  static const TextStyle mainButton = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 15,
      color: AppColors.mainButtonText,
      fontWeight: FontWeight.w500);
  static const TextStyle primaryThemeTextStyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 15,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500);
}
