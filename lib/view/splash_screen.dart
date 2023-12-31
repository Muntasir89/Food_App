import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_mobile_app/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import 'landscape_mode.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      Get.find<SplashController>();

      return SafeArea(
          child: Scaffold(
        body: SizedBox(
          width: w,
          height: h,
          child: Stack(
            children: [
              FadeInDown(
                delay: const Duration(milliseconds: 100),
                child: Container(
                  height: h / 2,
                  width: w,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1000),
                          bottomRight: Radius.circular(1000))),
                ),
              ),
              Positioned(
                  top: 90,
                  left: 60,
                  child: FadeInUp(
                      delay: const Duration(milliseconds: 500),
                      child: SizedBox(
                        width: w / 1.5,
                        height: h / 10,
                        child: Center(
                          child: Text(
                            "Food In Two",
                            style: GoogleFonts.bebasNeue(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ))),
              Positioned(
                top: 130,
                left: 60,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 700),
                  child: SizedBox(
                    width: w / 1.5,
                    height: h / 10,
                    child: Center(
                      child: Text(
                        "Food Delivery App",
                        style: GoogleFonts.lato(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 75,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 900),
                  child: Spin(
                    delay: const Duration(milliseconds: 1000),
                    child: SizedBox(
                      width: w / 1.6,
                      height: h / 3.3,
                      child: Center(child: Image.asset('assets/images/1.png')),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 80,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 1300),
                  child: SizedBox(
                    width: w / 1.6,
                    height: h / 19,
                    child: Center(
                      child: Text(
                        "Wait Moment Beutiful...",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 155,
                child: FadeInUp(
                  delay: const Duration(milliseconds: 1500),
                  child: SizedBox(
                    width: w / 5,
                    height: h / 15,
                    child: Center(
                      child: SpinKitFoldingCube(
                        size: 35,
                        itemBuilder: (context, index) {
                          return const DecoratedBox(
                            decoration: BoxDecoration(color: Colors.orange),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ));
    } else {
      return const LandScape();
    }
  }
}
