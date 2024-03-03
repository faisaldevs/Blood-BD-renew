import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'health_checkup/calculator.dart';
import 'health_checkup/health_checkup.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: const Text("Health Checkup"),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        color: Colors.white10,
        child: ListView(
          children: [
            HealthBody(
              title: "Body Mass Index(BMI)",
              subTitle:
                  "a way to see if you have correct amount body fat or not based on your height and weight.",
              onTap: () {
                Get.to(const Calculator());
              },
              image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Ponderal Index",
              subTitle: "An improved Version of BMI",
              onTap: () {}, image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Body Fat Percentage",
              subTitle:
              "a measure of fitness level of an individual",
              onTap: () {},
              image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Lean Body Mass",
              subTitle: "Calculate your fat free mass",
              onTap: () {}, image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Blood Volume",
              subTitle:
              "Volume of blood of any individual",
              onTap: () {},
              image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Body Water",
              subTitle: "Know your water volume in your body",
              onTap: () {}, image: "assets/images/bmi.png",
            ),
            HealthBody(
              title: "Heart Rate",
              subTitle: "know your heart rate",
              onTap: () {}, image: "assets/images/bmi.png",
            ),
          ],
        ),
      ),
    );
  }
}
