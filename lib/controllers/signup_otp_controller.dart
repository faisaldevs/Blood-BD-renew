import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupOTPController extends GetxController {
   GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

   TextEditingController signupOtpController = TextEditingController();

   FocusNode focusNode = FocusNode();
}
