import 'package:flutter/material.dart';
import 'package:watch_store/screens/main_screen/product_single_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ProductSingleScreen(),
            ),
          );
          // Navigator.pushNamed(context, AppScreens.productList);
        },
        child: const Text(
          'مشاهده جزییات محصولات',
          style: TextStyle(fontSize: 15,color: Colors.white),
        ),
      )),
    );
  }
}
