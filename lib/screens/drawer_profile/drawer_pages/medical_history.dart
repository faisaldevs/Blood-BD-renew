import 'package:blood_bd/screens/global_widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MedicalHistory extends StatelessWidget {
  const MedicalHistory({super.key});

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
        title: const Text("Medical History"),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.search,
              size: 120,
              color: Colors.black26,
            ),
            const Text(
              "No Notification Found!",
              style: TextStyle(fontSize: 24, color: Colors.black26),
            ),
            const SizedBox(
              height: 280,
            ),
            Container(
                width: Get.width,
                margin: const EdgeInsets.all(16),
                child: CustomButton(
                  onPressed: () {
                    Get.snackbar("Faisal", "Medical Report");
                  },
                  child: const Text("Add New Report"),
                )),
          ],
        ),
      ),
    );
  }
}
