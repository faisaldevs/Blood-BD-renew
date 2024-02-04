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
  const CustomDropdown({super.key, this.controller, required this.dropDownList, required this.label});

  final TextEditingController? controller;
  final String label;

  final List dropDownList;

  @override
  Widget build(BuildContext context) {
    FocusNode searchFocusNode = FocusNode();
    FocusNode textFieldFocusNode = FocusNode();
    return DropdownButtonFormField(
      style: const TextStyle(color: Colors.red),
      value: dropDownList[0],
      decoration:   InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.red),
        contentPadding: const EdgeInsets.only(left: 12),
        counterStyle: const TextStyle(fontWeight: FontWeight.bold),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black54,width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black54,width: 1),
        ),
      ),
      // validator: (value) {
      //   if (value == dropDownList[0]) {
      //     return "$label required";
      //   } else {
      //     return null;
      //   }
      // },
        items: dropDownList.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e,style: const TextStyle(fontWeight: FontWeight.normal),),
          );
        }).toList(),
      onChanged: (value) {},
    );
  }
}


// InputDecoration decoration = const InputDecoration(
//   labelText: ,
//   border: OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.black,
//         width: 1,
//       )),
//   hintText: "enter your custom hint text here",
// );
