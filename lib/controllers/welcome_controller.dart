import 'dart:math';

import 'package:blood_bd/screens/user_auth/login_screen/login_screen.dart';
import 'package:get/get.dart';

import '../screens/user_auth/signup_screen/signup_screens.dart';

class WelcomeController extends GetxController {
  signupBtn() async {
    Get.to(SignupScreen());
  }

  loginBtn() async {
    Get.to(const LoginScreen());
  }

  final List<String> imageUrls = [
    'assets/welcome_page/bd1.png',
    'assets/welcome_page/bd2.png',
    'assets/welcome_page/bd3.png',
    'assets/welcome_page/bd4.png',
  ];

  // // Variable to hold the current image URL
  RxString currentImageUrl = ''.obs;

  //   // Function to get a random image URL from the list
  String getRandomImageUrl() {
    return imageUrls[Random().nextInt(imageUrls.length)];
  }

  @override
  void onInit() {
    // Initialize the current image URL with a random image from the list
    currentImageUrl.value = getRandomImageUrl();
    super.onInit();
  }



  // // Function to update the image URL
  void updateImage() {
    currentImageUrl.value = getRandomImageUrl();
  }



}
