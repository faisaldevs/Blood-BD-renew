import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'notification/blood_request_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    String showTime() {
      DateTime now;

      now = DateTime.now();

      String formattedDate = DateFormat('dd MMM, kk:mm a').format(now);

      return formattedDate;
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.redAccent,
            statusBarIconBrightness: Brightness.dark,
            // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          title: const Text("Notification"),
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
          bottom: const TabBar(
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: "Request",
                ),
                Tab(
                  text: "Donate",
                ),
              ]),
        ),
        body:  TabBarView(
          children: [
            BloodRqNotification(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 120,
                  color: Colors.black26,
                ),
                Text(
                  "No Notification Found!",
                  style: TextStyle(fontSize: 24, color: Colors.black26),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
