import 'package:blood_bd/global/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../controllers/drawer_profile_controller.dart';

class DrawerHeaderPage extends StatefulWidget {
  const DrawerHeaderPage({super.key});

  @override
  State<DrawerHeaderPage> createState() => _DrawerHeaderPageState();
}

class _DrawerHeaderPageState extends State<DrawerHeaderPage> {
  final getStorage = GetStorage();

  DrawerProfileController drawerProfileController =
      Get.put(DrawerProfileController());

  @override
  Widget build(BuildContext context) {
    var name = getStorage.read("name") ?? "Faisal Ahamed";
    var number = getStorage.read("phone") ?? "01*********";
    var blood = getStorage.read("blood") ?? "A+";
    var gender = getStorage.read("gender") ?? "Male";
    var address = getStorage.read("address") ?? "Komorpur,Faridpur,Dhaka";
    var width = Get.width;
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Profile",
                  style: TextStyle(fontSize: 21.sp),
                ),
                Obx(
                  () => CupertinoSwitch(
                    value: drawerProfileController.switchValue.value,
                    onChanged: (value) {
                      drawerProfileController.activeStatus(value);
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                 SizedBox(
                  width: 8.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontSize: 24.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: Get.width * .6.w,
                        child: Text(
                          address,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(fontSize: 16.sp),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child:  Row(children: [
                    const Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.green,
                    ),
                    Text(
                      "Basic "
                      "Donor",
                      style: TextStyle(fontSize: 11.sp),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xfff9b6b6),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                    child: Text(gender,style: TextStyle(fontSize: 16.sp),)),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xfff9b6b6),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    child: blood == "null" ? Text("A+",style: TextStyle(fontSize: 16.sp),) : Text(blood,style: TextStyle(fontSize: 16.sp),)),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xfff9b6b6),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                    child: Text(number,style: TextStyle(fontSize: 16.sp),)),
              ],
            ),
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("object");
                  Get.toNamed(editProfile);
                }
              },
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.edit_note),
                    Text("Edit Profile",style: TextStyle(fontSize: 16.sp),),
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
