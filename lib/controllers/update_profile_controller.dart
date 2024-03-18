import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class UpdateProfileController extends GetxController {

  String token = GetStorage().read("token");
  String name = GetStorage().read("name");
  String phone = GetStorage().read("phone");
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  late final String bloodType;
  late final String gender;
  late final String division;
  late final String district;
  late final String upazila;
  late final String union;


  updateProfile() async {
    print("object");
    String appUri = "https://starsoftjpn.xyz/api/auth/update-profile";
    var response = await http.post(
      Uri.parse(appUri),
      headers: {
        "Accept" : "application/json",
        "Authorization" : token,
      },
      body: {
        "name" : nameController.text,
        "phone" : phone,
        "email" : "faisal.ah@gmail.com",
      },
    );
    print(response.statusCode);
    print(response.body);

    // if(response.statusCode == 200)
  }
}

