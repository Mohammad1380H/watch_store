import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../res/colors.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

class SearchBtn extends StatelessWidget {
  const SearchBtn({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.medium),
        child: Container(
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(60),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.searchBar,
                    blurRadius: 3,
                    offset: Offset(0, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(Assets.svg.search),
              const Text(
                Strings.searchProduct,
                style: AppTextStyle.hint,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(Assets.png.mainLogo.path),
              )
            ],
          ),
        ),
      ),
    );
  }
}
