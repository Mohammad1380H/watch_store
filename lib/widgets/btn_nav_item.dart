import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/colors.dart';

class BtnNavItem extends StatelessWidget {
  final String text;
  final String svgIconPath;
  final bool isActive;
  final void Function() onTap;
  const BtnNavItem({
    required this.onTap,
    required this.isActive,
    required this.svgIconPath,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.btmNavColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgIconPath,
              color: isActive
                  ? AppColors.btmNavActiveItem
                  : AppColors.btmNavInActiveItem,
            ),
            Text(
              text,
              style: isActive
                  ? AppTextStyle.btnNavActiveStyle
                  : AppTextStyle.btnNavInActiveStyle,
            )
          ],
        ),
      ),
    );
  }
}
