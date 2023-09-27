import 'package:flutter/material.dart';

import '../components/text_style.dart';
import '../res/strings.dart';

class RegisteratonAppBar extends StatelessWidget implements PreferredSize {
  const RegisteratonAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * .1),
      child: Row(children: [
        IconButton(onPressed: () =>Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
        const Text(Strings.register,style: AppTextStyle.title,)
      ]),
    );
  }
  
  @override

  Widget get child => const Text('data');
  
  @override

  Size get preferredSize => Size.fromHeight(size.height*.1);
}
