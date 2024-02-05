import 'package:blood_bd/screens/home_screen/widgets/banner_widget.dart';
import 'package:blood_bd/screens/home_screen/widgets/card_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../global/app_routes.dart';
import '../drawer_profile/drawer_profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        elevation: 0,
        backgroundColor: Colors.white60,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(notificationPage);
              },
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.red,
                size: 28,
              )),
        ],
      ),
      body: Container(
        color: Colors.white60,
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Builder(
                    builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          size: 100,
                          color: Colors.red,
                        )),
                  ),
                  const Text(
                    "Faisal",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              const CardSections(),

              const SizedBox(height: 40),

              const BannerWidget(),
            ],
          ),
        ),
      ),
      drawer: const DrawerProfile(),
    );
  }
}
