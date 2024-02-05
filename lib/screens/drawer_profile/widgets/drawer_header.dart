import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/drawer_profile_controller.dart';

class DrawerHeaderPage extends StatefulWidget {
  const DrawerHeaderPage({super.key});

  @override
  State<DrawerHeaderPage> createState() => _DrawerHeaderPageState();
}

class _DrawerHeaderPageState extends State<DrawerHeaderPage> {
  DrawerProfileController drawerProfileController = Get.put(DrawerProfileController());

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    var height = Get.height;
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(left: 10,),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 21),
                ),

                Obx(() => CupertinoSwitch(
                  value: drawerProfileController.switchValue.value,
                  onChanged: (value) {
                    drawerProfileController.activeStatus(value);
                  },
                ),),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(

                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(
                            "Full Name",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Text("Address"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Male"),
                SizedBox(
                  width: width * .05,
                ),
                const Text("A+"),
                SizedBox(
                  width: width * .05,
                ),
                const Text("01903440069"),
              ],
            ),
            GestureDetector(
              onTap: (){
                print("object");
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.edit_note),Text("Edit Profile"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
