import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RequestBloodController extends GetxController {
  final requestBloodKey = GlobalKey<FormState>();
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
      // dataList.add({
      //   // 'Name': _nameController.text,
      //   // "Father's Name": _fatherNameController.text,
      //   // "Mother's Name": _motherNameController.text,
      //   // 'Age': _ageController.text,
      //   // 'Email': _emailController.text,
      //   // 'Password': _passwordController.text,
      // }

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

      // Clearing the form fields after submission
      // _nameController.clear();
      // _fatherNameController.clear();
      // _motherNameController.clear();
      // _ageController.clear();
      // _emailController.clear();
      // _passwordController.clear();
    }
  }

  void saveData(Map<String, dynamic> data) {
    final box = GetStorage();
    // List<Map<String, dynamic>> dataList = box.read('dataList') ?? [];
    dataList.add(data);
    box.write('dataList', dataList);
    print("Data List :$dataList");
    print("Data List : Done!!");
  }
}

// }
