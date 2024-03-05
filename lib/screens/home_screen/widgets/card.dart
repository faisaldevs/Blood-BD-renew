// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CardWidget extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final Function() onTap;
//
//   const CardWidget(
//       {super.key,
//       required this.title,
//       required this.imageUrl,
//       required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       focusColor: Colors.transparent,
//       overlayColor: MaterialStateProperty.all(Colors.transparent),
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.only(left: 10, top: 10),
//         height: Get.height * .2,
//         width: Get.width * .45,
//         child: Card(
//           surfaceTintColor: Colors.blue,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           color: Colors.white,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: Get.height * .1,
//                 child: Image.asset(
//                   imageUrl,
//                   color: Colors.red,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(title,
//                   style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.red)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
