import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  Future<void> onPageTap() async{

    await Get.dialog(Text("data"));

}

}
