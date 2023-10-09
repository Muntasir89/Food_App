import 'package:flutter/material.dart';
import 'package:food_mobile_app/bindings/all_bindings.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'view/splash_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Mobile App',
      initialBinding: MyBindings(),
      home: const SplashScreen(),
    );
  }
}
