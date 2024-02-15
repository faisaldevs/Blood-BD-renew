import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SearchDonorController extends GetxController {
  final sdStorage = GetStorage();
  final searchDonorKey = GlobalKey<FormState>();
  final TextEditingController patientNameController = TextEditingController();
  late final String bloodType;
  late final String bloodAmount;
  late final String healthIssue;
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactParsonNameController =
      TextEditingController();
  final TextEditingController numberController = TextEditingController();

  searchDonor() {
    print("pressend");
    if (searchDonorKey.currentState!.validate()) {

      var patientName = patientNameController.text;
      var date = dateController.text;
      var time = timeController.text;
      var contactParsonPhone = numberController.text;
      var patientAddress = addressController.text;
      var contactParsonName = contactParsonNameController.text;

      sdStorage.write("patientName", patientName);
      sdStorage.write("bloodType", bloodType);
      sdStorage.write("bloodAmount", bloodAmount);
      sdStorage.write("healthIssue", healthIssue);
      sdStorage.write("date", date);
      sdStorage.write("time", time);

      sdStorage.write("patientAddress", patientAddress);
      sdStorage.write("contactParsonName", contactParsonName);
      sdStorage.write("contactParsonPhone", contactParsonPhone);

      Get.snackbar("Received", "Donor Data Received");
      print("object");
    }


  }
}

