import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';

import '../res/dimens.dart';
import '../res/strings.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(size.width, size.height * .1),
            child: Row(children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              const Text(Strings.register,style: AppTextStyle.title,)
            ]),
          ),
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Dimens.larg.height,
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
                  Dimens.larg.height,
                  MainButton(onPressed: () {}, text: Strings.next),
                  Dimens.larg.height,
                ],
              ),
            ),
          )),
    );
  }
}
