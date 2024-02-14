import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EditProfileController extends GetxController{
  final getStorage = GetStorage();

  final editProfileKey = GlobalKey<FormState>();


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

}