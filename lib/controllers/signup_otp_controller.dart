import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupOTPController extends GetxController {
  final otpFormKey = GlobalKey<FormState>();

  final TextEditingController signupOtpController = TextEditingController();

  final focusNode = FocusNode();
}
