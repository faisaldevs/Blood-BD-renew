import 'package:flutter/material.dart';



class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key, required this.controller, required this.label});
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
          context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );

      if(timeOfDay != null){

        setState(() {
          // widget.controller.text = DateFormat.yMMMd().format(pickedDate!);
          // print('Date: ${widget.controller.text}');
          selectedTime = timeOfDay;
        });
      }
    }
    return Expanded(
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(color: Colors.red),
        // validator: (time) {
        //   if (time!.isEmpty) {
        //     return "Time required";
        //   }
        //   return null;
        // },
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.red),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54,width: 1),
              borderRadius: BorderRadius.zero
          ),
          suffixIcon: const Icon(Icons.watch_later_outlined),
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



