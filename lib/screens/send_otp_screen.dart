import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';
import '../gen/assets.gen.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
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
              AppTextField(
                lable: Strings.enterYourNumber,
                hint: Strings.hintPhoneNumber,
                controller: controller,
                textInputType: TextInputType.number,
              ),
              Dimens.medium.height,
              MainButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppScreens.getOtp),
                  text: Strings.next),
            ]),
      )),
    );
  }
}
