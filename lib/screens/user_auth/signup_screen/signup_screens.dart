import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/signup_controller.dart';
import '../../../data_list/data_list.dart';
import '../../../global/app_colors.dart';
import '../../global_widget/custom_birthDate.dart';
import '../../global_widget/custom_button.dart';
import '../../global_widget/custom_dropdown.dart';
import '../../global_widget/custom_textFormField.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});

  final SignupController signupController = Get.put(SignupController());


/*Validation ar jonno Snack bar or dialog box use korta hobe????????  Text hobe("Please fill all the fields")*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.red),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: signupController.signupFormKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),

                //-------Name Field --------------

                CustomTextFormField(
                  controller: signupController.nameController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validate: (name) {
                    if (name!.isEmpty) {
                      return "Full name required";
                    }
                    return null;
                  },
                  labelText: "Full Name",
                ),

                const SizedBox(height: 10),

                //-------Gender Date Field --------------
                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.genderController,
                          dropDownList: DataList.genderListData,
                          label: '',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomBirthdate(
                      controller: signupController.dateController,
                      label: 'Date of Birth',
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                //-------BloodGroup Weight Field --------------
                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.bloodGroupController,
                          dropDownList: DataList.bloodListData,
                          label: '',
                        )),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomTextFormField(
                        controller: signupController.weightController,
                        hintText: '',
                        textInputType: TextInputType.number,
                        validate: (weight) {
                          if (weight!.isEmpty) {
                            return "Full name required";
                          }
                          return null;
                        },
                        padding: const EdgeInsets.only(left: 10),
                        labelText: 'Weight(Kg)',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                //  -------Division District Field --------------
                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.divisionController,
                          dropDownList: DataList.divisionListData,
                          label: 'Division',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.districtController,
                          dropDownList: DataList.districtListData,
                          label: 'District',
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                //  -------Upazila/City Union Field --------------
                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.upazilaController,
                          dropDownList: DataList.divisionListData,
                          label: 'Upazila',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomDropdown(
                          controller: signupController.unionController,
                          dropDownList: DataList.districtListData,
                          label: 'District',
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                //  ------- Address Field --------------

                CustomTextFormField(
                  controller: signupController.addressController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validate: (address) {
                    if (address!.isEmpty) {
                      return "Address required";
                    }
                    return null;
                  },
                  labelText: "Address",
                ),
                const SizedBox(
                  height: 10,
                ),

                //  ------- Mobile Field --------------
                CustomTextFormField(
                  controller: signupController.numberController,
                  hintText: "",
                  textInputType: TextInputType.number,
                  validate: (number) {
                    if (number!.isEmpty) {
                      return "Mobile number is required";
                    } else if (number.length != 11) {
                      return "Incorrect mobile number!!";
                    }
                    return null;
                  },
                  labelText: "Number",
                ),

                //  ------- Signup Button --------------

                const SizedBox(height: 40),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // child: CustomButton(onPressed: () {
                  //   controller.signUpForm();
                  // }, buttonText: "Sign Up"),
                  child: Obx(() => CustomButton(
                    onPressed: () {
                      // print("pressed");
                      signupController.signUpForm();
                    },
                    child: signupController.isLoading.value
                        ? const Center(
                        child: SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              backgroundColor: Colors.red,
                            )))
                        : Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        color: AppColor.wColor, fontSize: 18,),
                    ),
                  ),
                ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
