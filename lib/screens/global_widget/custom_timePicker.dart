import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker(
      {super.key, required this.controller, required this.label});

  final TextEditingController controller;
  final String label;

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  @override
  Widget build(BuildContext context) {

    TimeOfDay selectedTime = TimeOfDay.now();

    void showBirthDate() async {
      TimeOfDay? timeOfDay = await showTimePicker(
        // barrierColor: ,
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );

      if (timeOfDay != null) {
        setState(() {
          selectedTime = timeOfDay;
        });
      }
    }

    return Expanded(
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(color: Colors.red),
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: AppTheme.textFieldColor,
          filled: true,
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.red),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide.none,
          ),
          suffixIcon:  Icon(Icons.watch_later_outlined,color: AppTheme.textColorRed),
          contentPadding: const EdgeInsets.only(left: 10),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide.none),
        ),
        onTap: () => showBirthDate(),
      ),
    );
  }
}
