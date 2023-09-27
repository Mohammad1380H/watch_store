import 'package:flutter/material.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/screens/get_otp_screens.dart';
import 'package:watch_store/screens/main_screen/main_screen.dart';
import 'package:watch_store/screens/main_screen/product_list_screen.dart';
import 'package:watch_store/screens/main_screen/product_single_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  AppScreens.root: (context) => SendOtpScreen(),
  AppScreens.getOtp: (context) => GetOtpScreen(),
  AppScreens.register: (context) => RegisterScreen(),
  AppScreens.productList: (context) => const ProductListScreen(),
  AppScreens.productSingle: (context) => const ProductSingleScreen(),
  AppScreens.main: (context) => const MainScreen(),
};
