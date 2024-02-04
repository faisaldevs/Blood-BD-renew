import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Function() onPressed;
  final Widget child ;

  const CustomButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: child,
    );
  }
}

ButtonStyle buttonStyle = ButtonStyle(
  padding:
      MaterialStateProperty.all(const EdgeInsets.only(top: 18, bottom: 18)),
  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(color: Colors.red)),
  ),
);


// ElevatedButton(
// onPressed: () async{
// print("object");
// // setState(() => isLoading = true);
// // welcomePageController.signupForm();
// // await Get.to(const SignupPage(),transition: Transition.rightToLeftWithFade,duration: const Duration(milliseconds: 500));
// },
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.redAccent),
// foregroundColor: MaterialStateProperty.all(Colors.transparent),
// ),
// child: isLoading ?CircularProgressIndicator() : Text("Sign up",style: TextStyle(color: Colors.white),),
// ),