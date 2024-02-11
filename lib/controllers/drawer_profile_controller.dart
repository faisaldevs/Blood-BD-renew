import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerProfileController extends GetxController {
  RxBool switchValue = true.obs;

  activeStatus(bool value) {
    switchValue.value = value;

    Get.snackbar(
      "Active status ",
      "Active status on",
      maxWidth: Get.width * .55,
      duration: const Duration(milliseconds: 800),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.red,
      icon: switchValue.value
          ? const Icon(
              Icons.check_circle,
              color: Colors.green,
            )
          : const Icon(
              Icons.check_circle,
            ),
      titleText: const Text("Active status ",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
      messageText: switchValue.value
          ? RichText(
              text: const TextSpan(children: [
              TextSpan(
                text: "Active status  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
              TextSpan(
                text: "on",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.green),
              )
            ]))
          : RichText(
              text: const TextSpan(children: [
              TextSpan(
                text: "Active status  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
              TextSpan(
                text: "off",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ])),
    );
  }
}
