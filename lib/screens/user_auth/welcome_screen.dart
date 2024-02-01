import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome To Blood BD",style: GoogleFonts.roboto(color: Colors.red,fontSize: 54,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
