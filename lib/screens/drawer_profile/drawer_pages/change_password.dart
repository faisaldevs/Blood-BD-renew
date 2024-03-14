import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/change_pass_controller.dart';
import '../../global_widget/custom_textFormField.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  final controller = Get.put(ChangePassController());

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: controller.changePassKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.14,
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
                  'New Password',
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),

                const Text("Enter new Password"),
                SizedBox(
                  height: height * 0.02,
                ),

                /// Password Field

                CustomTextFormField(
                  controller: controller.currentPassword,
                  hintText: "New Password",
                  textInputType: TextInputType.text,
                  validate: (value) {
                    return null;
                  },
                  labelText: 'New Password',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                    controller: controller.newPassword,
                    labelText: "Confirm Password",
                    textInputType: TextInputType.text,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "faisal";
                      }
                      return null;
                    },
                    hintText: "Confirm Password",
                ),

                const SizedBox(
                  height: 10,
                ),

                CustomTextFormField(
                  controller: controller.confirmNewPassword,
                  labelText: "Confirm Password",
                  textInputType: TextInputType.text,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return "faisal";
                    }
                    return null;
                  },
                  hintText: "Confirm Password",
                ),

                // Continue Button
                // const Expanded(child: SizedBox()),
                //
                // SizedBox(
                //     width: width,
                //     child: CustomButton(
                //         onPressed: () {
                //           passController.forgetValidation();
                //           // print("object");
                //         },
                //         child: const Text("Continue"))),
                // const SizedBox(
                //   height: 16.0,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
