import 'package:flutter/material.dart';

class FindDonorBtn extends StatelessWidget {
  const FindDonorBtn({super.key, required this.onPressed});
 final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:  ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.red),
        shape: MaterialStatePropertyAll(  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.red)),)),

      child: const Text(
        "Find Donor",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
