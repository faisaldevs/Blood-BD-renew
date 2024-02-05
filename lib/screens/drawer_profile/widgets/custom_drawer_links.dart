import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/drawer_profile_controller.dart';

class CustomDrawerLinks extends StatelessWidget {
  const CustomDrawerLinks(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Colors.black26,
            width: 1.0,
          ),
        )),
        margin: const EdgeInsets.only(left: 10, top: 5),
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5),
        child: Row(
          children: [
            Icon(
              icon,
              size: 34,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(title, style: const TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}

//-------------------  Active Donor ----------------------

class ActiveDonor extends StatelessWidget {
  ActiveDonor({super.key});

  final DrawerProfileController drawerProfileController =
      Get.put(DrawerProfileController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          //                   <--- right side
          color: Colors.black26,
          width: 1.0,
        ),
      )),
      margin: const EdgeInsets.only(left: 10, top: 5),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.face,
                    size: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Active Donor', style: TextStyle(fontSize: 17)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: drawerProfileController.switchValue.value
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    : const Icon(
                        Icons.check_circle,
                      ),
              )
            ],
          )),
    );
  }
}
