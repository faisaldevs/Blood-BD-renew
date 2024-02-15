import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BloodHeroes extends StatelessWidget {
  const BloodHeroes({super.key});

  @override
  Widget build(BuildContext context) {
    String? name = "Faisal";
    String? address = "Kazipara, Mirpur, Dhaka";
    String? number1 = "01903440069";
    String? number2 = "0122355";

    return Scaffold(
      // backgroundColor: Colors.red.shade,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        title: const Text("Blood Heroes"),
        titleSpacing: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 4,top: 8),
         padding: const EdgeInsets.only(left: 16,top: 10),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
             Text(address,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
             Padding(
               padding: const EdgeInsets.only(top: 4,bottom:0),
               child: Text("contract :",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
             ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 8),
                   child: Row(
                     children: [
                       IconButton(onPressed: () async{
                         launchUrlString("tel:$number1");
                       },
                         icon: Row(
                         children: [
                           const Icon(Icons.call,size: 20,),
                           const SizedBox(width: 4,),
                           Text(number1,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                         ],
                       ),),

                       IconButton(onPressed: (){
                         launchUrlString("tel:$number2");
                       },
                         style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                         icon: Row(
                         children: [
                           const Icon(Icons.call,size: 20,),
                           const SizedBox(width: 4,),
                           Text(number2,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                         ],
                       ),),
                       // const Icon(Icons.call,size: 20,),
                       // Text(number1,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                     ],
                   ),
                 ),
                 // Row(
                 //   children: [
                 //     const Icon(Icons.call,size: 20,),
                 //     Text(number2,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                 //   ],
                 // ),
               ],
             )
           ],
         ),


        ),
      ),
    );
  }
}
