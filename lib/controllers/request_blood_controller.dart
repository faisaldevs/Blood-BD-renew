import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../global/app_routes.dart';

class RequestBloodController extends GetxController {
   GlobalKey<FormState> requestBloodKey = GlobalKey<FormState>();
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
  List<Map<String, dynamic>> dataList = [];

  onSaveRqBlood() {
    if (requestBloodKey.currentState!.validate()) {

      print("validate");

      final data = {
        "patient_name" : patientNameController.text,
        "blood_type" : bloodType,
        "blood_amount" : bloodAmount,
        "health_issue": healthIssue,
        "date" : dateController.text,
        "time" : timeController.text,
        "address" : addressController.text,
        "contact_person" : contactParsonNameController.text,
        "contact_person_number" : numberController.text
      };

      saveData(data);

      Get.offAllNamed(home);
    }
  }

  void saveData(Map<String, dynamic> data) {
    final box = GetStorage();
    dataList.add(data);
    box.write('dataList', dataList);


    print("Data List :$dataList");
    print("Data List : Done!!");
  }
}
