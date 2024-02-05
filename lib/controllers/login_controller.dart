import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart';

import '../global/app_routes.dart';

class LoginController extends GetxController{

  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

 RxBool isLoginIng = false.obs;


  Future<void> loginForm()async {

    if(loginFormKey.currentState!.validate()){

       isLoginIng.value = true;


      print(numberController.text);
      print(passwordController.text);
      print("validation success");


      try {
        var response = await post(Uri.parse("https://starsoftjpn.xyz/api/auth/login"), body: {
          "phone": numberController.text,
          "password": passwordController.text,
        });

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          print(response.statusCode.toString());
          isLoginIng.value = false;

          Get.offAllNamed(home);
          // numberController.clear();
          // passwordController.clear();
        } else {
          print("failed");
        }
      } catch (e) {
        print(e.toString());
      }

    }



  }
  forgetButton(){


  }

}
