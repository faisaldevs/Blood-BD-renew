import 'package:blood_bd/global/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card.dart';

class CardSections extends StatelessWidget {
  const CardSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CardWidget(
              title: 'Search Donor',
              imageUrl: "assets/images/home_icons/search donor.png",
              onTap: () {
                Get.toNamed(searchDonor);
              },
            ),
            CardWidget(
              title: 'Request Blood',
              imageUrl: "assets/images/home_icons/request_blood.png",
              onTap: () {
                Get.toNamed(requestBlood);
              },
            ),
          ],
        ),
        Row(
          children: [
            CardWidget(
              title: 'Blood Heroes',
              imageUrl: "assets/images/home_icons/blood heroes.png",
              onTap: () {
                Get.toNamed(bloodHeroes);
              },
            ),
            CardWidget(
              title: 'Feed',
              imageUrl: "assets/images/home_icons/feed.png",
              onTap: () {
                Get.toNamed(feedPage);
              },
            ),
          ],
        ),
      ],
    );
  }
}
