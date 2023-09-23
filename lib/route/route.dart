import 'package:flutter/material.dart';
import 'package:watch_store/route/name.dart';
import 'package:watch_store/screens/get_otp_screens.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  AppScreens.root: (context) => SendOtpScreen(),
  AppScreens.getOtp: (context) => GetOtpScreen(),
  AppScreens.register: (context) => RegisterScreen(),
};
