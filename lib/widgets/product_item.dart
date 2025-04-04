import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../res/colors.dart';
import '../res/dimens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productName,
    required this.oldPrice,
    this.discount = 0,
    this.time = 0,
  });
  final String productName;
  final int oldPrice;
  final num discount;
  final num time;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(Dimens.small),
        padding: const EdgeInsets.all(Dimens.small),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.medium),
            gradient: const LinearGradient(
                colors: AppColor.productBgGradiant,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        width: 200,
        child: Column(
          children: [
            Expanded(child: Image.asset(Assets.png.unnamed.path)),
            // title
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                productName,
                style: AppTextStyle.prodcutTitle,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${(oldPrice * (1 - (discount / 100)))
                            .toInt()
                            .seprateWithComma} تومان',
                      style: AppTextStyle.title,
                    ),
                    Visibility(
                      visible: discount > 0 ? true : false,
                      child: Text(
                        oldPrice.toString() ,
                        style: AppTextStyle.oldPrice,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: discount > 0 ? true : false,
                  child: Container(
                    padding: const EdgeInsets.all(Dimens.small * .5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.red,
                    ),
                    child: Text("$discount%"),
                  ),
                )
              ],
            ),
            Dimens.medium.height,
            Visibility(
              visible: time > 0 ? true : false,
              child: Container(
                width: double.infinity,
                height: 2,
                color: Colors.blue,
              ),
            ),
            Dimens.medium.height,
            Visibility(
              visible: time > 0 ? true : false,
              child: const Text(
                '09:26:28',
                style: AppTextStyle.prodTimer,
              ),
            )
          ],
        ));
  }
}
