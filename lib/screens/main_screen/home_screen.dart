import 'package:flutter/material.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ProductListScreen(),
            ),
          );
          // Navigator.pushNamed(context, AppScreens.productList);
        },
        child: const Text('مشاهده همه',style: TextStyle(fontSize: 15),),
      )),
    );
  }
}
