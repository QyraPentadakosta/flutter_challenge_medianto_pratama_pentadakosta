import 'package:flutter/material.dart';
import 'package:flutter_challenge_medianto_pratama_pentadakosta/assets/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Center dialogCustom(status, message) {
  return Center(
    child: Container(
      height: Get.height * 0.35,
      width: Get.width * 0.8,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              width: Get.width * 0.8,
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: white,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  width: Get.height * 0.1,
                  height: Get.height * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: status == 'berhasil' ? green : white,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    color: white,
                  ),
                  child: Center(
                    child: Icon(
                      status == 'berhasil' ? Icons.check : Icons.cancel,
                      color: status == 'berhasil' ? green : red,
                      size: 60,
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.8,
                  height: Get.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: white,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      top: Get.height * 0.05,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$message',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: black.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: status == 'berhasil' ? green : red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
