import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';

import '../res/dimens.dart';
import '../res/strings.dart';
import '../widgets/registration_app_bar.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: RegisteratonAppBar(size: size),
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.larg.height,
                  const Avatar(),
                  AppTextField(
                      lable: Strings.nameLastName,
                      hint: Strings.hintNameLastName,
                      controller: controller),
                  AppTextField(
                      lable: Strings.homeNumber,
                      hint: Strings.hintHomeNumber,
                      controller: controller),
                  AppTextField(
                      lable: Strings.address,
                      hint: Strings.hintAddress,
                      controller: controller),
                  AppTextField(
                      lable: Strings.postalCode,
                      hint: Strings.hintPostalCode,
                      controller: controller),
                  AppTextField(
                    lable: Strings.location,
                    hint: Strings.hintLocation,
                    controller: controller,
                    icon: const Icon(Icons.location_on),
                  ),
                  AppDimens.larg.height,
                  MainButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppScreens.main),
                      text: Strings.next),
                  AppDimens.larg.height,
                ],
              ),
            ),
          )),
    );
  }
}
