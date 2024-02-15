import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText,
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
    this.suffixFunction,
    this.onTap,
  });

  final TextEditingController? controller;
  final EdgeInsets? padding;
  final String? hintText;
  final String labelText;
  final String? helperText;
  final bool obscure;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final Color? borderColor;
  final int? designNumber;
  final bool? isEnabled;
  final Function(String)? onChanged;
  final String? Function(String?) validate;
  final void Function()? suffixFunction;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator: validate,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscure,
      enabled: isEnabled,
      keyboardType: textInputType,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: suffixFunction,
            child: Icon(
              suffixIcon,
              size: 28,
            )),
        contentPadding: padding,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black45, width: 1.0),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.blue)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.red),
        helperStyle: const TextStyle(color: Colors.black45),
      ),
    );
  }
}
