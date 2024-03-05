import 'package:flutter/material.dart';

class FindDonorBtn extends StatelessWidget {
  const FindDonorBtn({super.key, required this.onPressed, required this.child});
 final Function() onPressed;
 final String child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:  ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.red),
        shape: MaterialStatePropertyAll(  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.red)),)),

      child: Text(
        child,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
