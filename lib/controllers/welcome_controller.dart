
import 'package:blood_bd/screens/user_auth/login_screen/login_screen.dart';
import 'package:get/get.dart';

import '../screens/user_auth/signup_screen/signup_screens.dart';

class WelcomeController extends GetxController{

 RxBool isLoadingSign = false.obs;
 RxBool isLoadingLogin = false.obs;

  signupBtn()async{

    isLoadingSign.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoadingSign.value = false;
    Get.to(const SignupScreen());


  }

  loginBtn()async{
    isLoadingLogin.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoadingLogin.value = false;
    Get.to(const LoginScreen());



  }
}