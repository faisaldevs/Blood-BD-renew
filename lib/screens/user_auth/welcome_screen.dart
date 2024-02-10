import 'package:blood_bd/controllers/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../global/app_colors.dart';
import '../global_widget/custom_button.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final WelcomeController welcomeController = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg.jpg",
                ),
                fit: BoxFit.cover)),
        child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  width: Get.width * .4,
                  height: Get.height * .06,
                  child:CustomButton(
                      onPressed: () {
                        // print("pressed");
                        welcomeController.signupBtn();
                      },
                      child:  Text(
                              'Sign up',
                              style: GoogleFonts.roboto(
                                  color: AppColor.wColor, fontSize: 16),
                            ),
                    ),
                  ),
              const SizedBox(
                height: 8,
              ),
              const Text("or"),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: Get.width * .4,
                height: Get.height * .06,
                child:CustomButton(
                  onPressed: () {
                    // print("pressed");
                    welcomeController.loginBtn();
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                        color: AppColor.wColor, fontSize: 16,),
                  ),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
