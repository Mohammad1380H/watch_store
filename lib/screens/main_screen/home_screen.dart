import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import '../../gen/assets.gen.dart';
import '../../res/strings.dart';
import '../../widgets/app_slider.dart';
import '../../widgets/cat_widget.dart';
import '../../widgets/product_item.dart';
import '../../widgets/search_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SearchBtn(
              onTap: () {},
            ),
            AppSlider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CatWidget(
                  gradient: AppColors.catDesktopColors,
                  svgPath: Assets.svg.phone,
                  title: Strings.desktop,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColors.catDigitalColors,
                  svgPath: Assets.svg.digital,
                  title: Strings.digital,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColors.catSmartColors,
                  svgPath: Assets.svg.smart,
                  title: Strings.smart,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColors.catClasicColors,
                  svgPath: Assets.svg.clasic,
                  title: Strings.classic,
                  onTap: () {},
                ),
              ],
            ),
            AppDimens.larg.height,
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 270,
                    child: ListView.builder(
                        reverse: true,
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (context, index) => const ProductItem(
                              oldPrice: 1000000,
                              productName: 'ساعت مچی چرم اعلاء درجه یک',
                              discount: 10,
                              time: 100,
                            )),
                  ),
                  const VerticalText()
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.small),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                RotatedBox(
                    quarterTurns: 1, child: SvgPicture.asset(Assets.svg.back)),
                AppDimens.medium.width,
                const Text(
                  Strings.viewAll,
                  style: AppTextStyle.title,
                ),
              ],
            ),
            AppDimens.medium.height,
            const Text(
              Strings.amazing,
              style: AppTextStyle.amazingPart,
            )
          ],
        ),
      ),
    );
  }
}
