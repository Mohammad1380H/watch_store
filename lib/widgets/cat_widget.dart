import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../res/dimens.dart';

class CatWidget extends StatelessWidget {
  const CatWidget({
    required this.gradient,
    required this.title,
    required this.svgPath,
    super.key,
    required this.onTap,
  });

  final String title;
  final String svgPath;
  final VoidCallback onTap;
  final List<Color> gradient;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(AppDimens.small),
            padding: const EdgeInsets.all(AppDimens.small),
            height: size.height * .1,
            width: size.height * .1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradient,
              ),
              borderRadius: BorderRadius.circular(AppDimens.larg),
            ),
            child: SvgPicture.asset(
              svgPath,
            ),
          ),
          Text(
            title,
            style: AppTextStyle.title.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
