import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';

import '../global/app_routes.dart';

class LoginController extends GetxController{
  final getStorage = GetStorage();

  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

 RxBool isLoginIng = false.obs;


  Future<Text> loginForm()async {

    if(loginFormKey.currentState!.validate()){

       isLoginIng.value = true;


      if (kDebugMode) {
        print("validation success");
      }


      try {
        var response = await post(Uri.parse("https://starsoftjpn.xyz/api/auth/login"), body: {
          "phone": numberController.text,
          "password": passwordController.text,
        });

        if (response.statusCode == 200) {
          isLoginIng.value = false;
          var data = jsonDecode(response.body.toString());
          var id = data["user"]["id"];
          var name = data["user"]["name"].toString();
          var phone = data["user"]["phone"].toString();
          String message = data["message"].toString();

          getStorage.write("id", id);
          getStorage.write("name", name);
          getStorage.write("phone", phone);

          isLoginIng.value = false;
          Get.snackbar(
            "Login Successes",
            message,
          );

          Get.offAllNamed(home);
          // numberController.clear();
          // passwordController.clear();
        } else {
          if (kDebugMode) {
            print("failed");
          }
          Get.snackbar(
            "Login failed",
            "Number or Password was wrong..",
          );
        }
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }

    }

  return const Text("data");
  }

  forgetButton(){


  }


}
