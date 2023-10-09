import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_mobile_app/controllers/navigator_controller.dart';
import 'package:food_mobile_app/view/landscape_mode.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../view/home.dart';
import '../view/profile.dart';
import '../view/wallet.dart';

class MainNavigator extends StatelessWidget {
  MainNavigator({super.key});

  // Screens
  final List<Widget> screens = const [HomePage(), WalletPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<NavigatorController>();

    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SafeArea(
          child: Scaffold(
        body: GetBuilder<NavigatorController>(
          id: "change NavBar Index",
          builder: (context) {
            return screens[_controller.currentIndex];
          },
        ),

        /// bottomNavigationBar
        bottomNavigationBar: GetBuilder<NavigatorController>(
            id: "change NavBar Index",
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: CustomNavigationBar(
                  elevation: 40,
                  iconSize: 30.0,
                  scaleFactor: 0.3,
                  borderRadius: const Radius.circular(20),
                  unSelectedColor: Colors.grey,
                  strokeColor: Colors.white,
                  backgroundColor: Colors.black,
                  selectedColor: Colors.white,
                  isFloating: true,
                  currentIndex: _controller.currentIndex,
                  onTap: (index) {
                    _controller.changeNavBarIndex(index);
                  },
                  items: [
                    /// Home
                    CustomNavigationBarItem(
                      icon: const Icon(
                        LineIcons.home,
                      ),
                    ),

                    /// Wallet
                    CustomNavigationBarItem(
                      icon: const Icon(
                        LineIcons.wallet,
                      ),
                    ),

                    /// User Profile
                    CustomNavigationBarItem(
                      icon: const Icon(
                        LineIcons.user,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ));
    } else {
      return const LandScape();
    }
  }
}
