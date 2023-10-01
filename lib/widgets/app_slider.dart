import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

final List<String> list = [
  'https://webneel.com/daily/sites/default/files/images/daily/08-2018/2-nature-photography-besmirhamiti.jpg',
  'https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg',
  'https://webneel.com/daily/sites/default/files/images/daily/08-2018/4-nature-photography-italy-gavinhellier.jpg',
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
  final CarouselController _carouselController = CarouselController();
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _carouselController,
              items: widget.widgwtList,
              options: CarouselOptions(
                autoPlay: true,
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
