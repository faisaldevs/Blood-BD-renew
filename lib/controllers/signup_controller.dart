import 'dart:convert';

import 'package:blood_bd/models/DropdownModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../global/app_routes.dart';
import '../models/division_model.dart';


class SignupController extends GetxController {
   GetStorage getStorage = GetStorage();

   GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
   TextEditingController genderController = TextEditingController();
   TextEditingController dateController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
  late final String bloodType;
  late final String gender;
  late final String division;
  late final String district;
  late final String upazila;
  late final String union;
   TextEditingController addressController = TextEditingController();
   TextEditingController numberController = TextEditingController();
   TextEditingController weightController = TextEditingController();

  RxBool isVisible = true.obs;

  RxBool isSignup = false.obs;

  visibility() {
    isVisible.value = !isVisible.value;
  }

  RxBool show = false.obs;

  showFunction() {
    show.value = !show.value;
  }

  Future signUpForm() async {
    // isLoading.value = true;

    if (kDebugMode) {
      print("success");
    }
    if (formKey.currentState!.validate()) {
      isSignup.value = true;

      try {
        var response = await post(
            Uri.parse("https://starsoftjpn.xyz/api/auth/register"),
            body: {
              "name": nameController.text,
              "username": "numberController.text852",
              "phone": numberController.text,
              "email": "numberController.text852",
              "blood_group": bloodType,
              "date_of_birth": dateController.text,
              "gender": genderController.text,
              "weight": weightController.text,
              "division": division,
              "district": district,
              "upazila": upazila,
              "union": union,
              "address": addressController.text,
              "password": passwordController.text,
            });

        print(response.statusCode);

        if (response.statusCode == 200) {
          // var data = jsonDecode(response.body.toString());
          // var id = data["user"]["id"];
          // var name = data["user"]["name"].toString();
          // var phone = data["user"]["phone"].toString();
          // var blood = data["user"]["blood"].toString() ?? "O+";
          // String message = data["message"].toString();
          //
          // getStorage.write("id", id);
          // getStorage.write("name", name);
          // getStorage.write("phone", phone);
          // getStorage.write("blood", blood);

          var name = nameController.text;
          var phone = numberController.text;
          var id = numberController.text;
          var address = addressController.text;
          var blood = bloodType;
          print(blood);
          print(address.length);

          getStorage.write("id", id);
          getStorage.write("name", name);
          getStorage.write("phone", phone);
          getStorage.write("blood", blood);
          getStorage.write("gender", gender);
          getStorage.write("address", address);

          // isLoginIng.value = false;
          Get.snackbar(
            "Login Successes",
            "message",
          );

          await Future.delayed(const Duration(seconds: 2));

          isSignup.value = false;
          await Get.offAllNamed(home);
          // numberController.clear();
          // passwordController.clear();
        } else {
          isSignup.value = false;
          print("Failed Code : ${response.statusCode}");
          // Get.snackbar(
          //   "Login failed",
          //   "Number or Password was wrong..",
          // );
        }
      } catch (e) {
        isSignup.value = false;

        if (kDebugMode) {
          print(e.toString());
        }
      }

      if (kDebugMode) {
        print("success");
      }
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

  RxList<DivisionModel> divisions = <DivisionModel>[].obs;

Future<List<DivisionModel>> getDivision() async{

    print("pressed.............");
    try{
      final response = await http.get(Uri.parse("https://starsoftjpn.xyz/api/v1/division"));

      var jsonDataDecoded = json.decode(response.body);
      var divisionList = jsonDataDecoded['data'] as List;
      divisions.assignAll(divisionList as Iterable<DivisionModel>);



      if(response.statusCode == 200){
        print(divisions.toString());

        // print("-------------------------------------------------------------------
        // ------------------------------------------------------------------------------
        // ------------------------------------------"+divisionList.toString());

      }else{
        print("failed code${response.statusCode}");
      }



    }catch(e){
      print("field.....");
    }
    throw Exception("Loading failed !!!");

}

}
