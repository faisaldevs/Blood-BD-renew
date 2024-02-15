import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassOTPController extends GetxController {
  final otpFormKey = GlobalKey<FormState>();

  final TextEditingController forgetPassOtpController = TextEditingController();

  final focusNode = FocusNode();
}
