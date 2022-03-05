import 'package:flutter_challenge_medianto_pratama_pentadakosta/assets/dialog_custom.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  RxBool obscureText = true.obs;

  void showhidepassword(data) {
    if (data == true) {
      obscureText.value = false;
      refresh();
    } else {
      obscureText.value = true;
      refresh();
    }
  }

  void cekLogin(uid, password) {
    if (uid != '' && password != '') {
      if (uid.length <= 4 || password.length <= 5) {
        Get.dialog(
          CustomDialog(
            status: 'gagal',
            message: 'User ID dan atau Password \n terlalu pendek',
          ),
        );
      } else {
        Get.dialog(
          CustomDialog(
            status: 'berhasil',
            message: 'Berhasil Login',
          ),
        );
      }
    } else {
      Get.dialog(
        CustomDialog(
          status: 'gagal',
          message: 'User ID dan atau Password \n anda belum diisi',
        ),
      );
    }
  }
}
