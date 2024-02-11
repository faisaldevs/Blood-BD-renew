import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class DropDownButton extends StatelessWidget {
   DropDownButton({super.key});

  DropDownButtonController controller = Get.put(DropDownButtonController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DropdownButton(

            value: controller.selected,
            items: snapshot.data?.map((e) {
              return DropdownMenuItem(value: e.id.toString(),child: Text(e.id.toString()),);
            }).toList(),
            onChanged: (value) {

              // controller.onChange(value as bool);
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}


