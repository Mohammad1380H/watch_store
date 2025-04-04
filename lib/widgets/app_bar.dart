import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.child});

  @override
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          height: preferredSize.height,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Dimens.medium),
                bottomRight: Radius.circular(Dimens.medium),
              ),
              color: AppColor.appbar,
              boxShadow: [
                BoxShadow(
                    color: AppColor.shadow,
                    offset: const Offset(0, 2),
                    blurRadius: 3)
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.medium),
            child: child,
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
