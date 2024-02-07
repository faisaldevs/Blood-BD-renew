import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class ForgetOtpVerificationPage extends StatefulWidget {
  const ForgetOtpVerificationPage({super.key});

  @override
  State<ForgetOtpVerificationPage> createState() =>
      _ForgetOtpVerificationPageState();
}

class _ForgetOtpVerificationPageState extends State<ForgetOtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final forgetOtpFormKey = GlobalKey<FormState>();

    final TextEditingController forgetOtpController = TextEditingController();
    // final focusNode = FocusNode();
    final defaultPinTheme = PinTheme(
      height: 60.0,
      width: 60.0,
      textStyle: GoogleFonts.urbanist(
        fontSize: 24.0,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
          width: 1.0,
        ),
      ),
    );

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.14,
              ),
              const Icon(
                Icons.check_circle,
                size: 90,
                color: Colors.red,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                'OTP VERIFICATION',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),

              const Text("Enter the OTP Send To :+88"),
              SizedBox(
                height: height * 0.02,
              ),

              /// pinput package we will use here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: width,
                  child: Pinput(
                      key: forgetOtpFormKey,
                      controller: forgetOtpController,
                      validator: (otp) {
                        if (otp!.isEmpty) {
                          // print(otp);
                          return "Enter OTP pin";
                        }
                        return null;
                      },
                      length: 4,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      )),
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    // print("object");
                    // Get.toNamed(home);
                  },
                  child: Text(
                    'Resend Button',
                    style: GoogleFonts.urbanist(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              /// Continue Button
              const Expanded(child: SizedBox()),

              // SizedBox(width: width,child: CustomButton(onPressed: (){
              //   Get.toNamed(forgetPasswordPage);
              // }, buttonText: "Continue")),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  void otpValidation() async {
//   if (otpFormKey.currentState!.validate()) {
// //
// //     // ScaffoldMessenger.of(context)
// //     //     .showSnackBar(const SnackBar(content: Text("Sign In succeeded")));
// //
// //     showDialog(context: context, builder: (context) => const AlertDialog(
// //       // insetPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
// //       backgroundColor: Colors.white60,
// //       content: SizedBox(height:70,width: 0,child: Center(child: CircularProgressIndicator(color: Colors.red,))),
// //     ),
// //     );
// //
//     await Future.delayed(const Duration(milliseconds: 400));
//     await Get.to(home);
//
//     // await Navigator.push(context, MaterialPageRoute(builder: (context) =>  const OtpVerificationPage(),));
//
//    }
//
//  }
