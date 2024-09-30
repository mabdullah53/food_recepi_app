

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodrecipe/res/colors/App_colors.dart';
import 'package:get/get.dart';

class Utils {

  //agr user ny email likh liya hai tu osko password pr shift krny k liye
  static void fieldFocusChange(BuildContext context, FocusNode current,
      FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  //ye toast mesage k liye

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.BOTTOM
    );
  }

  static toastMessagecenter(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.CENTER
    );
  }

  static snakBar(String title, String message) {
    Get.snackbar(title, message,
      //ap isy design b kr sakhty hn
    );
  }
}