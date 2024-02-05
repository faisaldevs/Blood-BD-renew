import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  text: "Request",

                ),
                Tab(
                  text: "Donate",
                ),
              ]),

        ),

        // body: const TabBarView(
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Icon(Icons.search,size: 120,color: Colors.black26,),
        //         Text("No Notification Found!",style: TextStyle(fontSize: 24,color: Colors.black26),),
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Icon(Icons.search,size: 120,color: Colors.black26,),
        //         Text("No Notification Found!",style: TextStyle(fontSize: 24,color: Colors.black26),),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
