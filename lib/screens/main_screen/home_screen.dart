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
                  gradient: AppColor.catDesktopColors,
                  svgPath: Assets.svg.desktop,
                  title: Strings.desktop,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColor.catDigitalColors,
                  svgPath: Assets.svg.digital,
                  title: Strings.digital,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColor.catSmartColors,
                  svgPath: Assets.svg.smart,
                  title: Strings.smart,
                  onTap: () {},
                ),
                CatWidget(
                  gradient: AppColor.catClassicColors,
                  svgPath: Assets.svg.clasic,
                  title: Strings.classic,
                  onTap: () {},
                ),
              ],
            ),
            Dimens.larg.height,
            SingleChildScrollView(
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
                        itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.all(Dimens.small),
                            padding: const EdgeInsets.all(Dimens.small),

                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimens.medium),
                                gradient: const LinearGradient(
                                    colors: AppColor.productBgColors,
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),

                            width: 200,
                            child: Column(
                              children: [
                                Image.asset(Assets.png.unnamed.path),
                                // title
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ساعت مردانه',
                                    style: AppTextStyle.prodcutTitle,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(' تومان 63,500'),
                                        Text('122,000',style: AppTextStyle.oldPrice,),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(
                                          Dimens.small * .5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Colors.red,
                                      ),
                                      child: const Text('20%'),
                                    )
                                  ],
                                ),
                                Dimens.medium.height,
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Colors.blue,
                                ),
                                Dimens.medium.height,
                                const Text('09:26:22')
                              ],
                            ))),
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
      padding: const EdgeInsets.all(Dimens.small),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.svg.back),
                const Text(Strings.viewAll),
              ],
            ),
            const Text(Strings.amazing)
          ],
        ),
      ),
    );
  }
}
