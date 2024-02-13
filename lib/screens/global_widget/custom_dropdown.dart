// import 'package:flutter/material.dart';
//
// import '../../data/gender_list_data.dart';
//
// class CustomDropdown extends StatefulWidget {
//
//    const CustomDropdown({super.key});
//
//   @override
//   State<CustomDropdown> createState() => _CustomDropdownState();
// }
//
// class _CustomDropdownState extends State<CustomDropdown> {
//   @override
//   Widget build(BuildContext context) {
//
//    var genderListData = GenderList.genderListData;
//
//     List<String> _genderList = genderListData;
//     String dropdownValue = "";
//
//     myFormState() {
//       dropdownValue = _genderList[0];
//     }
//
//     return DropdownButton(
//       isExpanded: true,
//       value: dropdownValue,
//       icon: const Icon(Icons.keyboard_arrow_down_outlined),
//       items: _genderList.map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       onChanged: (val) {
//         setState(() {
//           dropdownValue = val!;
//         });
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
   CustomDropdown({
    super.key,
    required this.dropDownList,
    required this.label,
    required this.onChanged,
    // required this.hint,
  });

  // final Function() onChanged;
  final String label;
  // final Widget hint;

  final List dropDownList;
  var onChanged;
  // final List dropDownList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        decoration:  InputDecoration(
          // hintText: "hintText",
          labelText: label,
          labelStyle: const TextStyle(color: Colors.red),
          contentPadding: const EdgeInsets.only(left: 12),
          counterStyle: const TextStyle(fontWeight: FontWeight.bold),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.black54, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.black54, width: 1),
          ),
        ),
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