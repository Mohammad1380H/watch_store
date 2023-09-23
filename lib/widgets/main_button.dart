import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.onPressed, required this.text});

  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.07,
      width: size.width * 0.75,
      child: ElevatedButton(
        style: AppButtonStyle.mainButtonStyle,
        onPressed: onPressed,
        child: Text(text,style: AppTextStyle.mainButton,),
      ),
    );
  }
}
