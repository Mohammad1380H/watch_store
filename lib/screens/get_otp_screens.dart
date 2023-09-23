import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/route/name.dart';

import '../gen/assets.gen.dart';
import '../res/dimens.dart';
import '../res/strings.dart';
import '../widgets/app_text_field.dart';
import '../widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.png.mainLogo.path),
              Dimens.medium.height,
              Text(
                Strings.otpCodeSendFor
                    .replaceAll(Strings.replace, '090333333333'),
                style: AppTextStyle.title,
              ),
              Dimens.small.height,
              const Text(
                Strings.wrongNumberEditNumber,
                style: AppTextStyle.primaryThemeTextStyle,
              ),
              Dimens.larg.height,
              AppTextField(
                prefixLable: '2:56',
                lable: Strings.enterVerificationCode,
                hint: Strings.hintVerificationCode,
                controller: controller,
                textInputType: TextInputType.number,
              ),
              Dimens.medium.height,
              MainButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppScreens.register),
                  text: Strings.next),
            ]),
      )),
    );
  }
}
