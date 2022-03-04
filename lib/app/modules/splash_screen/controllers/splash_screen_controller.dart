import 'package:flutter_challenge_medianto_pratama_pentadakosta/app/modules/login_screen/views/login_screen_view.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void logicLoginscrren() {
    Future.delayed(Duration(seconds: 2), () {
      Get.off(LoginScreenView());
    });
  }
}
