import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FeedBody extends StatefulWidget {
  const FeedBody({super.key});

  @override
  State<FeedBody> createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {

    String showTime() {
      DateTime now;

      now = DateTime.now();

      String formattedDate = DateFormat('dd MMM, kk:mm a').format(now);

      return formattedDate;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      width: Get.width,
      child: Column(
        children: [
          Container(

            child: Row(
              children: [
                SizedBox(
                  width: Get.width * .1,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ),
                Container(
                  width: Get.width * .775,
                  padding: const EdgeInsets.only(left: 5,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Jami Ahmed",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              showTime(),
                              style: const TextStyle(
                                color: Colors.green,
                            ),)
                          ],
                        ),
                      ),
                      const Text("Address : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patient's Name : ",
                        style: TextStyle(
                            fontSize: 18,)),
                    Text("Health Issue : ",
                        style: TextStyle(
                            fontSize: 18,)),
                    Text("Blood Required : ",
                        style: TextStyle(
                            fontSize: 18,)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Text("A+"),
                    ),
                    InkWell(
                      onTap: () {
                        print("object");
                        setState(() {
                          isVisible =! isVisible;
                        });
                      },
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.chevron_down,
                            size: 16,
                          ),
                          Text("Show more")
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: isVisible,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Divider(),
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Address :"),
                      Text("Date & Time :"),
                    ],
                  ),
                ),

                const Divider(),
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Contact Person's Name"),
                      Text("Contact Person's Number"),
                    ],
                  ),
                ),

                Divider(),
                Container(

                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Massage"),
                      Text("dew   wwe 0eew dogie  eu ihhjfiew site heo h wo "),
                    ],
                  ),
                ),

              ],),
            ),
          ),
        ],
      ),
    );
  }
}
