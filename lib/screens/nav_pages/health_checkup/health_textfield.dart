import 'package:flutter/material.dart';

class HealthTextField extends StatelessWidget {
  const HealthTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black.withOpacity(0.2)),
      )),
    );
  }
}
