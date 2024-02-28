import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HealthBody extends StatelessWidget {
   const HealthBody({super.key, required this.title, required this.subTitle, required this.onTap, required this.image});

  final String title;
  final String subTitle;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 10),
      width: Get.width.w,
      height: 90.h,
      decoration:  BoxDecoration(
        // color:Color(0xffeeeeee),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(width: 1,color: const Color(0xffeeeeee),)
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        focusColor: Colors.black.withOpacity(.1),
        splashColor: Colors.black.withOpacity(.1),
        hoverColor: Colors.black.withOpacity(.1),
        child: ListTile(
          leading: Image.asset(image),
          title:  Text(title),
          subtitle:  Text(subTitle),
          contentPadding: const EdgeInsets.all(8),
          // style: ListTileStyle.drawer,
          // tileColor:
        ),
      ),
    );
  }
}
//
//