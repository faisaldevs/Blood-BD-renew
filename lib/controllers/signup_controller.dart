import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global/app_routes.dart';

class SignupController extends GetxController{
 RxBool isLoading = false.obs;

  final signupFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController divisionController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController upazilaController = TextEditingController();
  final TextEditingController unionController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController weightController = TextEditingController();


  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  signUpForm() async{

    isLoading.value = true;

    print("success");
    if(signupFormKey.currentState!.validate()){
      // showDialog(context: context, builder: (context) =>
      // const AlertDialog(
      //   // insetPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //   backgroundColor: Colors.white60,
      //   content: SizedBox(height: 70,
      //       width: 0,
      //       child: Center(
      //           child: CircularProgressIndicator(color: Colors.red,))),
      // ),
      // );

     print("success");

    }
    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;
    await Get.toNamed(home);
  }
}