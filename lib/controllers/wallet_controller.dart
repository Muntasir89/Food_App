import 'package:flutter/material.dart';
import 'package:food_mobile_app/model/salads_model.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  List<SaladModel> walletFood = [];

  // method for adding into walletFood list
  void add({
    required id,
    required img,
    required title,
    required subtitle,
    required price,
  }) {
    var contain = walletFood.where((element) => element.id == id);
    if (contain.isEmpty) {
      walletFood.add(SaladModel(
          id: id,
          img: img,
          title: title,
          subtitle: subtitle,
          deliveryTime: "",
          price: price,
          quantity: 0,
          description: ""));
      Get.snackbar("Notice!", "Added to you wallet",
          snackPosition: SnackPosition.TOP,
          duration: const Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
      update();
    } else {
      Get.snackbar("Warning", "You have added this Item before",
          snackPosition: SnackPosition.TOP,
          duration: const Duration(milliseconds: 1600),
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal);
    }
  }

  // Method for removing all items from the walletFood List
  void removeAllItems() {
    walletFood = [];
    update();
  }

  // Method for removing single item from walletFood List
  void removeSingleItem(int index) {
    walletFood.removeAt(index);
  }

  // Method for calculating Total Price of foods
  double totalAmount() {
    var sumPrice = 0.0;
    for (SaladModel walletFood in walletFood) {
      sumPrice = sumPrice + walletFood.price;
    }

    return sumPrice;
  }
}
