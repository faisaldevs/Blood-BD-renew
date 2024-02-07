import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


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
  final _searchDonorKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  // final TextEditingController _weightController = TextEditingController();
  // final TextEditingController _genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
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
        child: SingleChildScrollView(
          child: Form(
            key: _searchDonorKey,
            child: Column(
              children: [
                const SizedBox(height: 10),

// ------------------------1st part---------------------------------------

                //-------Name Field --------------

                CustomTextFormField(
                  controller: _nameController,
                  hintText: "",
                  textInputType: TextInputType.text,
                  validate: (name) {
                    if (name!.isEmpty) {
                      return "Patient's name required";
                    }
                    return null;
                  },
                  labelText: "Patient's Name",
                ),

                const SizedBox(height: 10),

                //-------Blood Group and  Blood Amount --------------

                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          dropDownList: DataList.bloodListData,
                          label: 'Blood Group',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomDropdown(
                          dropDownList: DataList.bloodAmount,
                          label: 'Amount',
                        )),
                  ],
                ),

                //-------Date  and  Time --------------
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CustomBirthdate(
                        controller: _dateController,
                        label: 'Date',
                      ),),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomTimePicker(
                      controller: _timeController,
                      label: 'time',
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                //-------  Health issue --------------

                CustomDropdown(dropDownList: DataList.bloodAmount, label: "Health Issue"),

                const SizedBox(height: 10),

                const Divider(),
                const SizedBox(height: 10),

// ------------------------2nd part---------------------------------------

                //-------  Division  issue --------------

                Row(
                  children: [
                    Expanded(
                        child: CustomDropdown(
                          dropDownList: DataList.divisionListData,
                          label: 'Division',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomDropdown(
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
                          dropDownList: DataList.divisionListData,
                          label: 'Division',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomDropdown(
                          dropDownList: DataList.districtListData,
                          label: 'District',
                        )),
                  ],
                ),
                const SizedBox(height: 10),


                //  ------- Address Field --------------

                CustomTextFormField(
                  controller: _addressController,
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

// ------------------------ 3rd part---------------------------------------

                CustomTextFormField(
                  controller: _addressController,
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
                  controller: _numberController,
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

// ------------------------ 4rd part---------------------------------------

                // CustomTextFormField(
                //   controller: _addressController,
                //   hintText: "",
                //   textInputType: TextInputType.text,
                //   validate: (address) {
                //     if (address!.isEmpty) {
                //       return "Address required";
                //     }
                //     return null;
                //   },
                //   labelText: "Contact Person's Name",
                // ),
                // const CustomFileUpload(labelText: 'Upload File',),
                const SizedBox(
                  height: 10,
                ),

                //  ------- Mobile Field --------------
                CustomTextFormField(
                  controller: _numberController,
                  hintText: "",
                  padding: const EdgeInsets.only(left: 10,top: 30,bottom: 30),
                  textInputType: TextInputType.text,
                  validate: (number) {
                    if (number!.isEmpty) {
                      return "Mobile number is required";
                    } else if (number.length != 11) {
                      return "Incorrect mobile number!!";
                    }
                    return null;
                  },
                  labelText: "Note",
                ),




                //  ------- Signup Button --------------

                const SizedBox(
                  height: 30,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(onPressed: () {
                    // signUpForm();
                  }, child: const Text("Sign Up")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
