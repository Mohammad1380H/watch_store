import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/components/text_style.dart';

import '../res/dimens.dart';

class AppTextField extends StatelessWidget {
  final String lable;
  final String prefixLable;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType? textInputType;

  const AppTextField({
    super.key,
    required this.lable,
    required this.hint,
    required this.controller,
    this.icon = const SizedBox(),
    this.prefixLable = '',
    this.textAlign = TextAlign.center,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: size.height * .07,
          width: size.width * 0.75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(prefixLable, style: AppTextStyle.title),
              Text(
                lable,
                style: AppTextStyle.title,
              ),
            ],
          ),
        ),
        Dimens.medium.height,
        SizedBox(
          height: size.height * .07,
          width: size.width * 0.75,
          child: TextField(
            style: AppTextStyle.title,
            controller: controller,
            textAlign: textAlign,
            keyboardType: textInputType,
            decoration: InputDecoration(
                prefixIcon: icon, hintText: hint, hintStyle: AppTextStyle.hint,),
          ),
        )
      ],
    );
  }
}
