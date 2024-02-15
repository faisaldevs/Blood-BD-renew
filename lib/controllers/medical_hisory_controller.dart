import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalHistoryController extends GetxController{
  final newReportKey = GlobalKey<FormState>();
  final TextEditingController hemoglobin = TextEditingController();
  final TextEditingController bloodPressure = TextEditingController();
  var bloodType;
  var hepatitis;
  var malaria;
  var institutionName;

  onSaveReport(){
    if(newReportKey.currentState!.validate()){

    }
  }




}