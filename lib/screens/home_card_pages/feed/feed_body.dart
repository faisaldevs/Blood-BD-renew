import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: const Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              Column(
                children: [
                  Text("Jami"),
                  Text("Address"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
