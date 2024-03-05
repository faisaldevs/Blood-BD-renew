import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassOTPController extends GetxController {
   GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

   TextEditingController forgetPassOtpController = TextEditingController();

   FocusNode focusNode = FocusNode();
}
