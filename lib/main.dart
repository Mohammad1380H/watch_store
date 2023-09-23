import 'package:flutter/material.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/screens/get_otp_screens.dart';
import 'package:watch_store/screens/register_screen.dart';

import 'screens/send_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      title: 'Wahtch Store',
      home: GetOtpScreen(),
    );
  }
}
