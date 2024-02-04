import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../global/app_routes.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: () {
          Get.toNamed(forgetOtpPage);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(Colors.transparent),
          overlayColor: MaterialStateProperty.all(Colors.red.shade50),
        ),
        child: const Text(
          "Forget Password",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.red,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
