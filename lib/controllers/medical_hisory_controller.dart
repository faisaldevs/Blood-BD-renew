import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MedicalHistoryController extends GetxController {
   GetStorage box = GetStorage();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();

   TextEditingController hemoglobin = TextEditingController();
   TextEditingController dayOfTest = TextEditingController();
   TextEditingController bloodPressure = TextEditingController();
   String? bloodType;
   String? hepatitis;
   String? malaria;
   String? institutionName;

  List<Map<String, dynamic>> dataList = [];

  onSaveReport() {

    // print(dayOfTest.text);


    if (formKey.currentState!.validate()) {
      final mhData = {
        "hemoglobin": hemoglobin.text,
        "bloodPressure": bloodPressure.text,
        "dayOfTest": dayOfTest.text,
        "bloodType": bloodType,
        "hepatitis": hepatitis,
        "malaria": malaria,
        "institutionName": institutionName,
      };

      saveData(mhData);

      hemoglobin.clear();
      dataList.clear();
      dayOfTest.clear();


    }
  }

  void saveData(Map<String, dynamic> mhData) {
    final box = GetStorage();
    dataList.add(mhData);
    box.write('mhList', dataList);
    //
    // var old = box.read("mhList");
    //
    // box.write('mhList1', [...old, dataList]);


    // print("Medical History List :$dataList");
    print("Medical History List : Done!!");
  }
}