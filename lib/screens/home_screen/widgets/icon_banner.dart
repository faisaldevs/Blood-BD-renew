import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/app_routes.dart';

class HomeScreenIcons extends StatelessWidget {
  const HomeScreenIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      // height: 250,
      width: Get.width * .9,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            // height: 40,
            width: Get.width,
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: const Text(
              "More Items",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          SizedBox(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(requestBlood);
                        },
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.note_add_outlined,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Add Request",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(searchDonor);
                        },
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.person_add_alt_1_outlined,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Become Donor",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(bloodHeroes);
                        },
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.add_box,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Blood Bank",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {

                        },
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.question_mark,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(history);
                        },
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.history_outlined,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "History",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.feedback_outlined,
                              size: 34,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "FeedBack",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.red,),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
