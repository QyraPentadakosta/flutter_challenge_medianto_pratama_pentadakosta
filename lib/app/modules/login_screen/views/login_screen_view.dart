import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  TextEditingController uid = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginScreenController loginScreenController =
        Get.put(LoginScreenController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    child: Image.asset('assets/header-login.png'),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: Get.height * 0.07,
                  child: Image.asset(
                    'assets/logo.png',
                    height: Get.height * 0.07,
                  ),
                ),
                Container(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: Get.width,
                          padding: EdgeInsets.only(
                            // top: Get.statusBarHeight,
                            right: Get.width * 0.08,
                            left: Get.width * 0.08,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Login',
                                        style: GoogleFonts.roboto(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Please sign in to continue.',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Hubballi',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: Get.height * 0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'User ID',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextField(
                                        controller: uid,
                                        decoration: InputDecoration(
                                          hintText: 'User ID',
                                          hintStyle: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 15.0,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Hubballi',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: Get.height * 0.04),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Obx(
                                        () => TextField(
                                          controller: password,
                                          obscureText: loginScreenController
                                              .obscureText.value,
                                          decoration: InputDecoration(
                                            suffix: TextButton(
                                              onPressed: () {
                                                controller.showhidepassword(
                                                  loginScreenController
                                                      .obscureText,
                                                );
                                              },
                                              child: Text(
                                                loginScreenController
                                                            .obscureText
                                                            .value ==
                                                        true
                                                    ? 'show'
                                                    : 'hide',
                                                style: TextStyle(
                                                  color: Color(0xFF6600cc),
                                                ),
                                              ),
                                            ),
                                            hintText: 'Password',
                                            hintStyle: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              fontSize: 15.0,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: 'Hubballi',
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: Get.height * 0.04),
                                ],
                              ),
                              Container(
                                width: Get.width * 0.4,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Color(0xFF6600cc),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    loginScreenController.cekLogin(
                                      uid.text,
                                      password.text,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      'LOGIN',
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  padding: EdgeInsets.only(bottom: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have account?",
                                        style: GoogleFonts.lato(
                                          color: Colors.black.withOpacity(0.3),
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        " Sign Up",
                                        style: GoogleFonts.lato(
                                          // letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
