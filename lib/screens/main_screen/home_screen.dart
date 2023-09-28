import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import '../../gen/assets.gen.dart';
import '../../res/dimens.dart';
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
              children: [
                CatWidget(
                  gradient: const [
                    Color.fromARGB(255, 255, 166, 114),
                    Color.fromARGB(255, 255, 217, 200),
                  ],
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
