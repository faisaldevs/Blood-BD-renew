import 'package:flutter/material.dart';

import '../../../data_list/data_list.dart';

class DropDownBtn extends StatelessWidget {


   DropDownBtn({super.key,required this.onChanged});
 List dropDownList = DataList.genderListData;
   var onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        items:  dropDownList.map((e) {
          return DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: const TextStyle(fontWeight: FontWeight.normal),
              ));
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
