import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashScreenController.logicLoginscrren();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                child: Image.asset('assets/logo.png'),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  width: Get.width * 1,
                  child: Image.asset(
                    'assets/header-splash.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  width: Get.width * 1,
                  child: Image.asset('assets/footer-splash.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
