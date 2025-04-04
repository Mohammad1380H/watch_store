import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/components/text_style.dart';

import '../gen/assets.gen.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

// ignore: must_be_immutable
class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.asset(Assets.png.avatar.path)),
        AppDimens.medium.height,
        const Text(
          Strings.chooseProfileImage,
          style: AppTextStyle.avatarText,
        )
      ],
    );
  }
}
