import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class CustomBirthdate extends StatefulWidget {
  const CustomBirthdate({super.key, required this.controller, required this.label});
  final TextEditingController controller;
  final String label;

  @override
  State<CustomBirthdate> createState() => _CustomBirthdateState();
}

class _CustomBirthdateState extends State<CustomBirthdate> {
  @override
  Widget build(BuildContext context) {

    void showBirthDate() async {
      DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1950),
          lastDate: DateTime.now());

      setState(() {
        widget.controller.text = DateFormat.yMMMd().format(pickedDate!);
      });
    }
    return Expanded(
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(color: Colors.red),
        validator: (age) {
          if (age!.isEmpty) {
            return "Date of birth required";
          }
          return null;
        },
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.red),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54,width: 1),
            borderRadius: BorderRadius.zero
          ),
          suffixIcon: const Icon(Icons.calendar_month_outlined),
          contentPadding: const EdgeInsets.only(left: 10),

          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45, width: 1),
              borderRadius: BorderRadius.zero
          ),
        ),
        onTap: () => showBirthDate(),
      ),
    );
  }
}



