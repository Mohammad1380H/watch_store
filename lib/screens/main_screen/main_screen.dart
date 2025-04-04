import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:watch_store/res/btn_nav_index.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/screens/main_screen/bascket_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import '../../gen/assets.gen.dart';
import '../../res/strings.dart';
import '../../widgets/btn_nav_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtnNavIndex.home;

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();
  final GlobalKey<NavigatorState> _bascketKey = GlobalKey();

  late final Map<int, GlobalKey<NavigatorState>> _keyMap = {
    BtnNavIndex.home: _homeKey,
    BtnNavIndex.bascket: _bascketKey,
    BtnNavIndex.profile: _profileKey,
  };
  final List _stackScreen = [BtnNavIndex.home];

  Future<bool> _onWillPop() async {
    if (_keyMap[selectedIndex]!.currentState!.canPop()) {
      _keyMap[selectedIndex]!.currentState!.pop();
    } else {
      if (_stackScreen.length > 1) {
        setState(() {
          _stackScreen.removeLast();
          selectedIndex = _stackScreen.last;
        });
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double btmNavHeight = size.height * .08;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        _onWillPop();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: btmNavHeight,
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    Navigator(
                      key: _bascketKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const BascketScreen(),
                      ),
                    ),
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: btmNavHeight,
                  color: AppColors.btmNavColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BtnNavItem(
                        isActive: selectedIndex == BtnNavIndex.profile,
                        onTap: () => btnNavItemOnPressed(BtnNavIndex.profile),
                        svgIconPath: Assets.svg.user,
                        text: Strings.profile,
                      ),
                      BtnNavItem(
                        isActive: selectedIndex == BtnNavIndex.bascket,
                        onTap: () => btnNavItemOnPressed(BtnNavIndex.bascket),
                        svgIconPath: Assets.svg.basket,
                        text: Strings.basket,
                      ),
                      BtnNavItem(
                        isActive: selectedIndex == BtnNavIndex.home,
                        onTap: () => btnNavItemOnPressed(BtnNavIndex.home),
                        svgIconPath: Assets.svg.home,
                        text: Strings.home,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  btnNavItemOnPressed(int index) {
    setState(() {
      selectedIndex = index;
      _stackScreen.add(selectedIndex);
    });
  }
}
