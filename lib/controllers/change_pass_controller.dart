import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class ChangePassController extends GetxController {
  GlobalKey<FormState> changePassKey = GlobalKey<FormState>();

  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();
  String token = GetStorage().read("token");

  passChange() async {
    String appUrl = "https://starsoftjpn.xyz/api/auth/change-password";
    var response = await http.post(
      Uri.parse(appUrl),
      headers: {
        "Accept" : "application/json",
        "Authorization" : token,
      },
      body: {
        "currentPassword" : currentPassword.text,
        "newPassword" : newPassword.text,
        "confirmNewPassword" : confirmNewPassword.text,

      }
    );
    print(response.statusCode.toString());
    print(response.body);

    // if(response.statusCode == 200){
    //   print(object)
    // }
  }
}
