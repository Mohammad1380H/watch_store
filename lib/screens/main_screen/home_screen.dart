import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
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
                  gradient: AppColor.catDesktopColors ,
                  svgPath: Assets.svg.desktop,
                  title: Strings.desktop, onTap: () {  },
                ),
                CatWidget(
                  gradient: AppColor.catDigitalColors ,
                  svgPath: Assets.svg.digital,
                  title: Strings.digital, onTap: () {  },
                ),
                CatWidget(
                  gradient: AppColor.catSmartColors ,
                  svgPath: Assets.svg.smart,
                  title: Strings.smart, onTap: () {  },
                ),
                CatWidget(
                  gradient: AppColor.catClassicColors ,
                  svgPath: Assets.svg.clasic,
                  title: Strings.classic, onTap: () {  },
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
