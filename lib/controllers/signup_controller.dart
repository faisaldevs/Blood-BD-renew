import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';

import '../global/app_routes.dart';
import '../models/DropdownModel.dart';

class SignupController extends GetxController {
  RxBool isLoading = false.obs;
  // var blood;
  final getStorage = GetStorage();

  final signupFormKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController divisionController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController upazilaController = TextEditingController();
  final TextEditingController unionController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future signUpForm() async {
    isLoading.value = true;

    if (kDebugMode) {
      print("success");
    }
    if (signupFormKey.currentState!.validate()) {

      var name = nameController.text;
      var phone = numberController.text;
      var id = numberController.text;
      var blood = bloodGroupController.text;

      getStorage.write("id", id);
      getStorage.write("name", name);
      getStorage.write("phone", phone);
      getStorage.write("blood", blood);

      // showDialog(context: context, builder: (context) =>
      // const AlertDialog(
      //   // insetPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //   backgroundColor: Colors.white60,
      //   content: SizedBox(height: 70,
      //       width: 0,
      //       child: Center(
      //           child: CircularProgressIndicator(color: Colors.red,))),
      // ),
      // );

      if (kDebugMode) {
        print("success");
      }

      await Future.delayed(const Duration(seconds: 2));

      isLoading.value = false;
      await Get.offAllNamed(home);
    }

  }




  // signUpForm(){
  //   Get.toNamed(home);
  // }


  // Future<List<DropdownModel>> getPost() async {
  //   try {
  //     final response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //
  //     final body = json.decode(response.body) as List;
  //
  //     if (response.statusCode == 200) {
  //       print(response.statusCode.toString());
  //
  //       return body.map((e) {
  //         final map = e as Map<String, dynamic>;
  //         return DropdownModel(
  //           userId: map["userId"],
  //           id: map["id"],
  //           title: map["title"],
  //           body: map["body"],
  //         );
  //       }).toList();
  //     }
  //   } catch (e) {
  //     print("object");
  //   }
  //
  //   throw Exception("");
  // }


}
