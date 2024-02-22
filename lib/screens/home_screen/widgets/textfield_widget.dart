import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({super.key, required this.label, required this.dropDownList,this.onChanged,this.icon});
  final String label;

  final List dropDownList;
  IconData? icon;

  var onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),

      decoration: BoxDecoration(color: Colors.black.withOpacity(.2),

        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: DropdownButtonFormField(
        // dropdownColor:  Colors.black.withOpacity(.2),
        icon: Icon(icon,color: Colors.black,), //--------------------
        decoration: InputDecoration(
          hintText: label,
          // labelStyle:  const TextStyle(color: Colors.red),
          contentPadding: const EdgeInsets.only(left: 12),
          counterStyle: const TextStyle(fontWeight: FontWeight.bold),
          border:  InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        items: dropDownList.map((e) {
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
