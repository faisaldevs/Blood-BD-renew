import 'package:blood_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../controllers/request_blood_controller.dart';
import '../../data_list/data_list.dart';
import '../global_widget/custom_birthDate.dart';
import '../global_widget/custom_button.dart';
import '../global_widget/custom_dropdown.dart';
import '../global_widget/custom_textFormField.dart';
import '../global_widget/custom_timePicker.dart';

class RequestBlood extends StatefulWidget {
  const RequestBlood({super.key});

  @override
  State<RequestBlood> createState() => _RequestBloodState();
}

class _RequestBloodState extends State<RequestBlood> {
  RequestBloodController  rqBloodController = Get.put(RequestBloodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: AppTheme.primary,
        surfaceTintColor: Colors.transparent,
        title: const Text("Request Blood"),
        titleSpacing: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: rqBloodController.requestBloodKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 10),

                //-------Name Field --------------

                CustomTextFormField(
                  controller: rqBloodController.patientNameController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validate: (name) {
                    if (name.toString().isEmpty) {
                      return "Patient's name required";
                    }
                    return null;
                  },
                  labelText: "Patient's Name",
                ),

                const SizedBox(height: 30),

                //-------Blood Group and  Blood Amount --------------

                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.bloodListData,
                          label: 'Blood Group',
                          onChanged: (value) {
                            rqBloodController.bloodType = value.toString();
                          },
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.bloodAmount,
                          label: 'Amount',
                          onChanged: (value) {
                            rqBloodController.bloodAmount = value.toString();
                          },
                        )),
                  ],
                ),

                //-------Date  and  Time --------------
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomBirthdate(
                      controller: rqBloodController.dateController,
                      label: 'Date',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomTimePicker(
                      controller: rqBloodController.timeController,
                      label: 'time',
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                //-------  Health issue --------------

                CustomDropdown(
                  dropDownList: DataList.bloodAmount,
                  label: "Health Issue",
                  onChanged: (value) {
                    rqBloodController.healthIssue = value.toString();
                  },
                ),

                const SizedBox(height: 10),

                const Divider(),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.divisionListData,
                          label: 'Division',
                          onChanged: (value) {},
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.districtListData,
                          label: 'District',
                          onChanged: (value) {},
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                //  -------Upazila/City Union Field --------------
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.divisionListData,
                          label: 'Division',
                          onChanged: (value) {},
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomDropdown(
                          dropDownList: DataList.districtListData,
                          label: 'District',
                          onChanged: (value) {},
                        )),
                  ],
                ),
                const SizedBox(height: 10),

                //  ------- Address Field --------------

                CustomTextFormField(
                  controller: rqBloodController.addressController,
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

                const SizedBox(height: 10),

                const Divider(),
                const SizedBox(height: 10),

                CustomTextFormField(
                  controller: rqBloodController.contactParsonNameController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validate: (address) {
                    if (address!.isEmpty) {
                      return "Address required";
                    }
                    return null;
                  },
                  labelText: "Contact Person's Name",
                ),
                const SizedBox(
                  height: 10,
                ),

                //  ------- Mobile Field --------------
                CustomTextFormField(
                  controller: rqBloodController.numberController,
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

                const SizedBox(
                  height: 40,
                ),

                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: CustomButton(
                      onPressed: () {
                        rqBloodController.onSaveRqBlood();
                        // if(rqBloodController.requestBloodKey.currentState!.validate()){
                        //   print("validate??");
                        // }
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
