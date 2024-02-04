import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../global/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    bool isLoading = false;
    var bdh = Get.height;
    var bdw = Get.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: bdh,
          width: bdw,
          decoration: BoxDecoration(
            color: AppColor.bColor,
          ),

          child: Column(
            children: [
              Text("BLOOD BD",style: GoogleFonts.roboto(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold,),),
              SizedBox(
                width: Get.width * .4,
                height: Get.height *.06,
                child: ElevatedButton(
                  onPressed: () async{
                    print("object");
                    // setState(() => isLoading = true);
                    // welcomePageController.signupForm();
                    // await Get.to(const SignupPage(),transition: Transition.rightToLeftWithFade,duration: const Duration(milliseconds: 500));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child:  isLoading ?CircularProgressIndicator() :Text("Sign up",style: TextStyle(color: Colors.white),),
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
                height: Get.height *.06,
                child: ElevatedButton(
                  onPressed: () {
                    // Get.toNamed("/login");
                    // Get.to(const LoginScreen(),transition: Transition.native,duration: Duration(seconds: 1));
                  },
                  style: ButtonStyle(
                    // padding: MaterialStateProperty.all(
                    //   const EdgeInsets.symmetric(
                    //       vertical: 18.0, horizontal: 35.0),
                    // ),
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child:  isLoading ?CircularProgressIndicator() :Text("Login",style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
