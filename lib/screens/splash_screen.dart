import 'package:blood_bd/global/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final getStorage = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    if (getStorage.read("id") != null){
      Future.delayed(const Duration(seconds: 2), () => Get.offAllNamed(home));
    }
    else
      {
        Future.delayed(const Duration(milliseconds: 2), () => Get.offAllNamed(welcomePage));
      }




  }

//   @override
//   void onReady(){
//     super.onReady();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
      ),
      body: Center(
          child: Text(
        "BLOOD BD",
        style: GoogleFonts.roboto(
            color: AppColor.bColor, fontSize: 54, fontWeight: FontWeight.bold),
      )),
    );
  }
}
