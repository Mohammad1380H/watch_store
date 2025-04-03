import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor),
      )),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return AppColor.focusedTextField;
          } else {
            return AppColor.unFocusedTextField;
          }
        }),
        contentPadding: const EdgeInsets.all(Dimens.medium),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.medium),
            borderSide: const BorderSide(color: AppColor.border)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.medium),
            borderSide: const BorderSide(color: AppColor.primaryColor)),
      ));
}
