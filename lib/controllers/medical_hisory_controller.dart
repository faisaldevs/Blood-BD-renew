import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalHistoryController extends GetxController {
  final newReportKey = GlobalKey<FormState>();
  final TextEditingController hemoglobin = TextEditingController();
  final TextEditingController bloodPressure = TextEditingController();
  late String bloodType;
  late String hepatitis;
  late String malaria;
  late String institutionName;

  onSaveReport() {
    if (newReportKey.currentState!.validate()) {}
  }
}
