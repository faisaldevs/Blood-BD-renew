// import 'package:flutter/material.dart';
//
// class CustomFileUpload extends StatelessWidget {
//   const CustomFileUpload(
//       {super.key,
//       this.controller,
//       this.padding,
//       this.hintText,
//       required this.labelText,
//       this.helperText,
//       this.obscure,
//       required this.textInputType,
//       this.suffixIcon,
//       this.borderColor,
//       this.designNumber,
//       this.isEnabled,
//       this.onChanged});
//
//   final TextEditingController? controller;
//   final EdgeInsets? padding;
//   final String? hintText;
//   final String labelText;
//   final String? helperText;
//   final bool? obscure;
//   final TextInputType textInputType;
//   final Widget? suffixIcon;
//   final Color? borderColor;
//   final int? designNumber;
//   final bool? isEnabled;
//   final Function(String)? onChanged;
//   String? Function(String?) validate;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: validate,
//       onChanged: onChanged,
//       controller: controller,
//       // obscureText: obscure,
//       enabled: isEnabled,
//       keyboardType: textInputType,
//       style: const TextStyle(
//         color: Colors.black,
//         // fontWeight: FontWeight.bold,
//       ),
//
//       decoration: InputDecoration(
//         contentPadding: padding,
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.zero,
//           borderSide: BorderSide(color: Colors.black45, width: 1.0),
//         ),
//         border: const OutlineInputBorder(
//             borderRadius: BorderRadius.zero,
//             borderSide: BorderSide(color: Colors.blue)),
//         labelText: labelText,
//         labelStyle: const TextStyle(color: Colors.red),
//       ),
//     );
//   }
// }
