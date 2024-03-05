import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassController extends GetxController {
  GlobalKey<FormState> forgetPassKey = GlobalKey<FormState>();
   TextEditingController newPassword = TextEditingController();
   TextEditingController confirmPassword = TextEditingController();

  forgetValidation() {
    if(forgetPassKey.currentState!.validate()){
      print("succeed");
    }else{
      print("failed");
    }
  }
}
