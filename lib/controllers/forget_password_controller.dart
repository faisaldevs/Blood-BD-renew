import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassController extends GetxController{
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  forgetValidation(){

    if (kDebugMode) {
      print("success");
    }

    // if(newPassword = forgetPassword){
    //
    // }
    // Get.toNamed(home);

  }
}