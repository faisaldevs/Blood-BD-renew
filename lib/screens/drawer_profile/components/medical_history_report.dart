import 'package:blood_bd/data_list/data_list.dart';
import 'package:blood_bd/screens/global_widget/custom_button.dart';
import 'package:blood_bd/screens/global_widget/custom_dropdown.dart';
import 'package:blood_bd/screens/global_widget/custom_textFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../controllers/medical_hisory_controller.dart';
import '../../global_widget/custom_file_upload.dart';

class NewReport extends StatelessWidget {
   NewReport({super.key});

   MedicalHistoryController medicalHistoryController = Get.put(MedicalHistoryController());

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
          "New Report",
          style: TextStyle(color: Colors.black),
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: Get.height,
          width: Get.width,
          child: Form(
            key: medicalHistoryController.newReportKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              
                      const Text("Please Provide your Medical Information"),
                      const SizedBox(height: 10,),
              
                      CustomTextFormField(
                        controller: medicalHistoryController.hemoglobin,
                        hintText: "15.5 g/dL",
                        textInputType: TextInputType.number,
                        validate: (value) {
                          if(value!.isEmpty){
                            return "required Hemoglobin Level";
                          }
                          return null;
                        },
                        labelText: "Hemoglobin Level*",
                      ),
                      const SizedBox(height: 8),
                      CustomDropdown(
                        dropDownList: DataList.bloodListData,
                        label: "Blood Group",
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 8),
              
                      const Row(
                        children: [
                          Text("Infection Diseases "),
                           Expanded(child: Divider(color: Colors.black45,)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomDropdown(
                              dropDownList: DataList.bloodListData,
                              label: "Hepatitis",
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: CustomDropdown(
                              dropDownList: DataList.bloodListData,
                              label: "Malaria",
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      CustomTextFormField(
                        controller: medicalHistoryController.bloodPressure,
                        hintText: "120/80",
                        textInputType: TextInputType.number,
                        validate: (value) {
                          if(value!.isEmpty){
                            return "required Hemoglobin Level";
                          }
                          return null;
                        },
                        labelText: "Blood pressure*",
                      ),
                      const SizedBox(height: 14),
              
              
                          const Divider(color: Colors.black45,),
              
                      const SizedBox(height: 8),
                      CustomDropdown(
                        dropDownList: DataList.bloodListData,
                        label: "Institute Name",
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 8),
                      CustomFileUpload(
                        padding: const EdgeInsets.all(16),
                        border: Border.all(color: Colors.black54, width: 1),
                        onTap1: () {},
                        onTap2: () {},
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    // height: 70,
                    width: Get.width,
                    child: CustomButton(
                      onPressed: () {
                        medicalHistoryController.onSaveReport();
                      },
                      child: const Text("Save Report",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
