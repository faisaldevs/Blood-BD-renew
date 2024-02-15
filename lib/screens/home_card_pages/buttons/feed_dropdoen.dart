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

class CustomDropdownFeed extends StatelessWidget {
  CustomDropdownFeed({
    super.key,
    required this.dropDownList,
    required this.label,
    required this.onChanged,
    // required this.hint,
  });

  final String label;

  final List dropDownList;
  var onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.red.shade100,
        hintText: label,
        // labelText: label,
        hintStyle: const TextStyle(color: Colors.red),
        contentPadding: const EdgeInsets.only(left: 12),
        counterStyle: const TextStyle(fontWeight: FontWeight.bold),
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
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
    );
  }
}
