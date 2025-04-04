import 'package:flutter/material.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/route/route.dart';

import 'screens/main_screen/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      initialRoute: AppScreens.root,
      home: ProductListScreen(),
      // routes: appRoutes,
      title: 'Watch Store',

    );
  }
}
