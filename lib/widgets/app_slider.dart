import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

final List<String> list = [
  'https://dl.kanzwatch.com/uploading/productgallery/1875472/p/watson-men-s-watch-model-w-1134g-352.jpg',
  'https://cdn.honarechehre.ir/images/25650bf0-a01a-11ef-bc52-2770038fb4a3.webp',
  'https://dl.bahalmag.ir/images/%D8%B9%DA%A9%D8%B3_%D8%B2%DB%8C%D8%A8%D8%A7%D8%AA%D8%B1%DB%8C%D9%86_%D8%B3%D8%A7%D8%B9%D8%AA_%D9%85%DA%86%DB%8C_%D8%AF%D8%AE%D8%AA%D8%B1%D8%A7%D9%86%D9%87/%D8%B9%DA%A9%D8%B3-%D8%B2%DB%8C%D8%A8%D8%A7%D8%AA%D8%B1%DB%8C%D9%86-%D8%B3%D8%A7%D8%B9%D8%AA-%D9%85%DA%86%DB%8C-%D8%AF%D8%AE%D8%AA%D8%B1%D8%A7%D9%86%D9%87.jpg',
];

class AppSlider extends StatefulWidget {
  AppSlider({
    super.key,
  });
  final List<Widget> widgwtList = list.map((e) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimens.medium),
        child: Image.network(
          e,
          fit: BoxFit.cover,
        ),
      ),
    );
  }).toList();
  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _carouselController,
              items: widget.widgwtList,
              options: CarouselOptions(
                autoPlay: true,
                reverse: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list
                .asMap()
                .entries
                .map((e) => GestureDetector(
                      onTap: () {
                        _carouselController.animateToPage(e.key);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: Dimens.medium,
                          height: Dimens.medium,
                          decoration: BoxDecoration(
                              color:
                                  e.key == current ? Colors.black : Colors.grey,
                              shape: BoxShape.circle),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
