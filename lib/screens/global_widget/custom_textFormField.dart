import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
 const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.helperText,
    this.obscure = false,
    required this.textInputType,
    this.suffixIcon,
    this.borderColor,
    this.designNumber,
    this.isEnabled,
    this.onChanged,
    this.padding,
    required this.validate,
    required this.labelText,
  });

  // final TextEditingController controller;
  final TextEditingController? controller;
  final EdgeInsets? padding;
  final String hintText;
  final String labelText;
  final String? helperText;
  final bool obscure;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Color? borderColor;
  final int? designNumber;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final String? Function(String?) validate;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,

      onChanged: onChanged,
      controller: controller,
      obscureText: obscure,
      enabled: isEnabled,
      keyboardType: textInputType,
      style: const TextStyle(
        color: Colors.black,
        // fontWeight: FontWeight.bold,
      ),
      // decoration: InputDecoration(
      //   floatingLabelBehavior: FloatingLabelBehavior.never,
      //   hintStyle: TextStyle(
      //     color: Colors.black,
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   labelStyle: TextStyle(
      //     color: Colors.black,
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   helperStyle: TextStyle(
      //     color: Colors.black,
      //     fontSize: 14.sp,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   hintText: hintText,
      //   helperText: helperText,
      //   suffixIcon: suffixIcon,
      //   border: designNumber != null
      //       ? showDesign(designNumber!)
      //       : _outlineDesignOne(),
      //   enabledBorder: designNumber != null
      //       ? showDesign(designNumber!)
      //       : _outlineDesignOne(),
      //   focusedBorder: designNumber != null
      //       ? showDesign(designNumber!)
      //       : _outlineDesignOne(),
      //   disabledBorder: designNumber != null
      //       ? showDesign(designNumber!)
      //       : _outlineDesignOne(),
      // ),

      decoration: InputDecoration(
        contentPadding: padding,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black45, width: 1.0),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.blue)),
        labelText: labelText,

        labelStyle: const TextStyle(color: Colors.red),
      ),
    );
  }

// OutlineInputBorder _outlineDesignOne() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.all(
//       Radius.circular(
//         30.r,
//       ),
//     ),
//     borderSide: const BorderSide(
//       // color: secondaryColor,
//       color: Colors.black45,
//       width: 2,
//     ),
//   );
// }

//   OutlineInputBorder _outlineDesignTwo() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(
//         // color: secondaryColor,
//         color: Colors.black45,
//       ),
//       borderRadius: BorderRadius.circular(
//         10.r,
//       ),
//     );
//   }
//
//   OutlineInputBorder showDesign(int designNumber) {
//     switch (designNumber) {
//       case 1:
//         return _outlineDesignTwo();
//       default:
//         return _outlineDesignTwo();
//     }
//   }
}
