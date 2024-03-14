import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassController extends GetxController{
  GlobalKey<FormState> changePassKey = GlobalKey<FormState>();

  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

}