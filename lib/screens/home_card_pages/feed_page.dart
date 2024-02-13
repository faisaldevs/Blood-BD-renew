import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'feed/feed_body.dart';

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
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.redAccent,
            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          title: const Text("Feed"),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: "My Request",

                ),
                Tab(
                  text: "Other Request",
                ),
              ]),

        ),

        body:   TabBarView(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.search,size: 120,color: Colors.black26,),
                Text("No Notification Found!",style: TextStyle(fontSize: 24,color: Colors.black26),),
              ],
            ),
            Container(
              child: hasData? ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => const FeedBody(),
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search,size: 120,color: Colors.black26,),
                  Text("No Notification Found!",style: TextStyle(fontSize: 24,color: Colors.black26),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//             child: const Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Icon(Icons.search,size: 120,color: Colors.black26,),
//                   Text("No Notification Found!",style: TextStyle(fontSize: 24,color: Colors.black26),),
//                 ],
//               ),