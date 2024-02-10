import 'package:blood_bd/screens/user_auth/signup_screen/signup_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/login_controller.dart';
import '../../../global/app_colors.dart';
import '../../global_widget/custom_button.dart';
import '../../global_widget/custom_textFormField.dart';
import 'forget_password/forgetButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        title: const Text("Login"),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Form(
            key: _loginController.loginFormKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  const Icon(
                    Icons.account_circle_rounded,
                    size: 70,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.redAccent, fontSize: 24),
                  ),
                  const SizedBox(height: 20),

                  //------- NUMBER TextField ------
                  CustomTextFormField(
                    controller: _loginController.numberController,
                    hintText: '',
                    textInputType: TextInputType.text,
                    validate: (number) {
                      if (number!.isEmpty) {
                        return "Password required";
                      }
                      return null;
                    },
                    labelText: 'Mobile Number',
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  //------- Password TextField ------
                  CustomTextFormField(
                    controller: _loginController.passwordController,
                    hintText: '',
                    obscure: true,
                    textInputType: TextInputType.text,
                    validate: (pass) {
                      if (pass!.isEmpty) {
                        return "Password required";
                      }
                      return null;
                    },
                    labelText: 'Password',
                  ),

                   ForgetPasswordWidget(onPressed: (){_loginController.forgetButton;},),
                  const SizedBox(
                    height: 20,
                  ),

                  //------- CONTINUE BUTTON ------

                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Obx(
                        () => CustomButton(
                          onPressed: () {
                            _loginController.loginForm();
                          },
                          child: _loginController.isLoginIng.value
                              ? const Center(
                                  child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        backgroundColor: Colors.red,
                                      )))
                              : Text(
                                  "Login",
                                  style: GoogleFonts.roboto(
                                    color: AppColor.wColor,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      )),
                  const SizedBox(height: 40,),

                  const Text("Don't Have an account?"),
                  const SizedBox(height: 20,),

                  TextButton(onPressed: (){
                    Get.to(SignupScreen());
                  },
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red[300]),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                        ),
                      ),
                      child: const Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18),)),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
