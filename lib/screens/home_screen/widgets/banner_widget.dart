import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List urlImages = [
      "assets/images/banner/1.png",
      "assets/images/banner/2.png",
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: Get.height * .18,
      width: Get.width,
      child: CarouselSlider.builder(
        itemCount: urlImages.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        },
        options: CarouselOptions(
          height: 200,
          viewportFraction: 1,
          autoPlay: true,
        ),
      ),
    );
  }

  Widget buildImage(urlImage, int index) => Container(
        margin: const EdgeInsets.only(left: 8),
        child: Image.asset(urlImage, fit: BoxFit.cover),
      );
}
