import 'package:flutter/material.dart';
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
    print(uid);
    if (uid != '' && password != '') {
      Get.defaultDialog(
        title: 'Berhasil',
        titleStyle: TextStyle(color: Colors.green),
        middleText: 'Berhasil Login',
        cancel: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'OK',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      Get.defaultDialog(
        title: 'Gagal',
        titleStyle: TextStyle(color: Colors.red),
        middleText: 'User ID dan atau Password \n anda belum diisi',
        cancel: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'OK',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }
}
