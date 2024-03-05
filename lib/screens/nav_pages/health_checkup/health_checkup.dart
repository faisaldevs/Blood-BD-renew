import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HealthBody extends StatelessWidget {
  const HealthBody(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap,
      required this.image});

  final String title;
  final String subTitle;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: Get.width.w,
        height: 90.h,
        decoration: BoxDecoration(
            color: Color(0xffeeeeee),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 1,
              color: const Color(0xffeeeeee),
            )),
        child: ListTile(
          onTap: onTap,
          leading: Image.asset(image),
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          contentPadding: const EdgeInsets.all(8),
          // tileColor: Colors.red,
          // style: ListTileStyle.drawer,
          // tileColor:
        ),
      ),
    );
  }
}
//
//
