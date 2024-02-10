
import 'package:blood_bd/screens/user_auth/login_screen/login_screen.dart';
import 'package:get/get.dart';

import '../screens/user_auth/signup_screen/signup_screens.dart';

class WelcomeController extends GetxController{



  signupBtn()async{
    Get.to( SignupScreen());


  }

  loginBtn()async{
    Get.to(const LoginScreen());



  }
}