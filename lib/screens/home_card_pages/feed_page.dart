import 'package:blood_bd/data_list/data_list.dart';
import 'package:blood_bd/screens/global_widget/custom_dropdown.dart';
import 'package:blood_bd/screens/home_card_pages/feed/feed_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'feed/feed_donor_request.dart';
import 'feed/feed_receiver_request.dart';

class FeedPage extends StatelessWidget {
  FeedPage({super.key});

  final getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    var contactParsonPhone = getStorage.read("contactParsonPhone");
    bool hasData = contactParsonPhone != null;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.redAccent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          title: const Text("Blood Request",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          titleSpacing: 0,
          backgroundColor: Colors.redAccent,
          elevation: 0,
          leading: null,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Container(
              //   color: Colors.red,
              //   height: Get.height * .18,
              //   width: Get.width,
              //   child: Image.asset(
              //     "assets/images/banner/1.png",
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // SizedBox(
              //   height: Get.height * .01,
              // ),
              Expanded(
                child: Column(
                  children: [
                    const TabBar(
                        labelColor: Colors.redAccent,
                        indicatorColor: Colors.redAccent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 3,
                        tabs: [
                          Tab(
                            text: "Donor",
                          ),
                          Tab(
                            text: "Receiver",
                          ),
                        ]),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    FeedDropdown(
                        dropDownList: DataList.bloodListData,
                        label: "Select Blood Type",
                        onChanged: (value) {}),
                    SizedBox(
                      height: Get.height * .01,
                    ),
                     Expanded(
                      child: TabBarView(
                        children: [
                          const DonorRequestFeed(),
                          // dataList == []? const Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   children: [
                          //     Icon(
                          //       Icons.search,
                          //       size: 120,
                          //       color: Colors.black26,
                          //     ),
                          //     Text(
                          //       "No Notification Found!",
                          //       style: TextStyle(
                          //           fontSize: 24, color: Colors.black26),
                          //     ),
                          //   ],
                          // ) :ListView.builder(
                          //
                          //   itemBuilder: (context, index) {
                          //   return Container(child: Text(dataList[index]["Patient's Name"]),);
                          // },
                          // itemCount: dataList.length,
                          // ),
                          // Container(
                          //   child: hasData
                          //       ? ListView.builder(
                          //           itemCount: 5,
                          //           itemBuilder: (context, index) =>
                          //               const FeedBody(),
                          //         )
                          //       : const Column(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.center,
                          //           children: [
                          //             Icon(
                          //               Icons.search,
                          //               size: 120,
                          //               color: Colors.black26,
                          //             ),
                          //             Text(
                          //               "No Notification Found!",
                          //               style: TextStyle(
                          //                   fontSize: 24,
                          //                   color: Colors.black26),
                          //             ),
                          //           ],
                          //         ),
                          // ),
                          ReceiverRequestFeed(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
