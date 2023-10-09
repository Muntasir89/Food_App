import 'package:flutter/material.dart';
import 'package:food_mobile_app/controllers/food_controller.dart';
import 'package:food_mobile_app/controllers/switch_controller.dart';
import 'package:food_mobile_app/controllers/wallet_controller.dart';
// import 'package:food_mobile_app/view/home.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: const MyFAB(),
      appBar: const MyAppBar(),
    ));
  }
}

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    var _foodController = Get.find<FoodController>();
    var _controller = Get.find<SwitchController>();
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        Get.find<WalletController>().add(
            id: _foodController.salads[_controller.currentSaladIndex].id,
            img: _foodController.salads[_controller.currentSaladIndex].img,
            title: _foodController.salads[_controller.currentSaladIndex].title,
            subtitle:
                _foodController.salads[_controller.currentSaladIndex].subtitle,
            price: _foodController.salads[_controller.currentSaladIndex].price);
      },
      child: const Icon(
        LineIcons.shoppingCart,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          )),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
