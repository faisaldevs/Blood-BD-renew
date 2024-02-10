import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchDonorController extends GetxController{
  final searchDonorKey = GlobalKey<FormState>();
  final TextEditingController patientNameController = TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController bloodAmountController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController healthIssueController = TextEditingController();



  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactParsonNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();


  searchDonor(){

      if (searchDonorKey.currentState!.validate()) {
        Get.snackbar("Received", "Donor Data Received");
      }

  }
}