import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/widgets/app_bar.dart';

import '../../gen/assets.gen.dart';
import '../../res/dimens.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
      appBar: CustomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CupertinoIcons.cart),
          Row(
            children: [
              Text("پرفروشترین ها"),
              AppDimens.small.width,
              SvgPicture.asset(Assets.svg.sort)
            ],
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(Assets.svg.close)),
        ],
      )),
    );
  }
}
