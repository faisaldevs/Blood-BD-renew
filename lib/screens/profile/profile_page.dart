// import 'package:blood_bd/utils/app_colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../../controllers/drawer_profile_controller.dart';
// import '../../global/app_routes.dart';
// import '../drawer_profile/components/custom_drawer_links.dart';
// import '../drawer_profile/drawer_pages/change_password.dart';
// import '../drawer_profile/drawer_pages/medical_history.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//
//   final getStorage = GetStorage();
//
//   DrawerProfileController drawerProfileController =
//   Get.put(DrawerProfileController());
//
//   @override
//   Widget build(BuildContext context) {
//     var name = getStorage.read("name") ?? "Faisal Ahamed";
//     var number = getStorage.read("phone") ?? "01*********";
//     var blood = getStorage.read("blood") ?? "A+";
//     var gender = getStorage.read("gender") ?? "Male";
//     var address = getStorage.read("address") ?? "Komorpur,Faridpur,Dhaka";
//     var width = Get.width;
//     return Scaffold(
//       backgroundColor: AppTheme.primary,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView(
//           children: [
//             // -------Drawer Header------------
//             DrawerHeader(
//               margin: EdgeInsets.zero,
//               padding: const EdgeInsets.only(
//                 left: 10,
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     AppBar(
//                       backgroundColor: AppTheme.primary,
//                       surfaceTintColor: Colors.transparent,
//                       systemOverlayStyle: const SystemUiOverlayStyle(
//                         statusBarColor: Colors.redAccent,
//                         statusBarIconBrightness: Brightness.dark,
//                         statusBarBrightness: Brightness.light,
//                       ),
//                       elevation: 0,
//                       title: const Row(
//                         children: [
//                            Text(
//                             "Profile",
//                             // style: TextStyle(fontSize: 21.sp , color: AppTheme.textColorRed ),
//                           ),
//                         ],
//                       ),
//                       foregroundColor: AppTheme.textColorRed,
//                       titleSpacing: 0,
//                       // leading: InkWell(
//                       //   onTap: () => Get.back(),
//                       //   child: const Icon(
//                       //     Icons.arrow_back_ios,
//                       //   ),
//                       // ),
//                       actions: [
//                         Obx(
//                               () => CupertinoSwitch(
//                             value: drawerProfileController.switchValue.value,
//                             onChanged: (value) {
//                               drawerProfileController.activeStatus(value);
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         const CircleAvatar(
//                           backgroundImage: AssetImage("assets/images/profile.png"),
//                         ),
//                         SizedBox(
//                           width: 8.w,
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 4),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     name,
//                                     style: TextStyle(fontSize: 24.sp, color: AppTheme.textColorRed ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                                 width: Get.width * .6.w,
//                                 child: Text(
//                                   address,
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                   softWrap: true,
//                                   style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),
//                                 )),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {},
//                           child:  Row(children: [
//                             const Icon(
//                               Icons.star,
//                               size: 11,
//                               color: Colors.green,
//                             ),
//                             Text(
//                               "Basic "
//                                   "Donor",
//                               style: TextStyle(fontSize: 11.sp, color: AppTheme.textColorRed ),
//                             ),
//                           ]),
//                         ),
//                         const SizedBox(
//                           width: 8,
//                         ),
//                         Container(
//                             decoration:  BoxDecoration(
//                               borderRadius: const BorderRadius.all(Radius.circular(10)),
//                               color: Colors.black.withOpacity(.3),
//                             ),
//                             padding:
//                             const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
//                             child: Text(gender,style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),)),
//                         SizedBox(
//                           width: width * .02,
//                         ),
//                         Container(
//                             decoration:  BoxDecoration(
//                               borderRadius: const BorderRadius.all(Radius.circular(10)),
//                               color: Colors.black.withOpacity(.3),
//                             ),
//                             padding:
//                             const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
//                             child: blood == "null" ? Text("A+",style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),) : Text(blood,style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),)),
//                         SizedBox(
//                           width: width * .02,
//                         ),
//                         Container(
//                             decoration:  BoxDecoration(
//                               borderRadius: const BorderRadius.all(Radius.circular(10)),
//                               color: Colors.black.withOpacity(.3),
//                             ),
//                             padding:
//                             const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
//                             child: Text(number,style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),)),
//                       ],
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (kDebugMode) {
//                           print("object");
//                           Get.toNamed(editProfile);
//                         }
//                       },
//                       child:  Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(Icons.edit_note, color: AppTheme.textColorRed ),
//                             Text("Edit Profile",style: TextStyle(fontSize: 16.sp, color: AppTheme.textColorRed ),),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             // -------Drawer Body------------
//             ActiveDonor(),
//
//             CustomDrawerLinks(
//               title: 'Medical History',
//               icon: Icons.medical_information_outlined,
//               onTap: () {
//                 Get.to( MedicalHistory());
//               },
//             ),
//             CustomDrawerLinks(
//               title: 'Notifications',
//               icon: Icons.notifications_active,
//               onTap: () {
//                 Get.toNamed(notificationPage);
//               },
//             ),
//             CustomDrawerLinks(
//               title: 'Donation Accepted',
//               icon: Icons.bloodtype_outlined,
//               onTap: () {
//                 Get.toNamed(donationAccepted);
//               },
//             ),
//             CustomDrawerLinks(
//               title: 'Donation Blocked',
//               icon: Icons.bloodtype_outlined,
//               onTap: () {
//                 Get.toNamed(donationBlocked);
//               },
//             ),
//             CustomDrawerLinks(
//               title: 'History',
//               icon: Icons.history_edu_outlined,
//               onTap: () {
//                 Get.toNamed(history);
//               },
//             ),
//             // CustomDrawerLinks(
//             //   title: 'My Search History',
//             //   icon: Icons.content_paste_search_outlined,
//             //   onTap: () {
//             //     Get.toNamed(mySearchHistory);
//             //   },
//             // ),
//             CustomDrawerLinks(
//               title: 'Customer Support',
//               icon: Icons.privacy_tip_outlined,
//               onTap: () {},
//             ),
//             CustomDrawerLinks(
//               title: 'Privacy Settings',
//               icon: Icons.question_answer_outlined,
//               onTap: () {},
//             ),
//             CustomDrawerLinks(
//               title: 'FAQ',
//               icon: Icons.support_agent_outlined,
//               onTap: () {
//                 Get.to(ChangePassword());
//               },
//             ),
//             CustomDrawerLinks(
//               title: 'Logout',
//               icon: Icons.logout_outlined,
//               onTap: () {
//                 GetStorage().erase();
//                 Get.offAllNamed(welcomePage);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
// //Scaffold(
// //       backgroundColor: AppTheme.primary,
// //       body: Container(
// //         width: Get.width,
// //         height: Get.height,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             AppBar(
// //               backgroundColor: AppTheme.primaryRed,
// //               foregroundColor: AppTheme.primary,
// //               surfaceTintColor: Colors.transparent,
// //               title: const Text("Profile"),
// //               centerTitle: true,
// //             ),
// //             Column(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               children: [
// //                 SizedBox(
// //                   height: Get.height * .20,
// //                   child: Stack(
// //                     children: [
// //                       Container(
// //                         height: Get.height * .14,
// //                         width: Get.width,
// //                         padding: const EdgeInsets.only(
// //                           top: 20,
// //                         ),
// //                         decoration: const BoxDecoration(
// //                           color: Colors.redAccent,
// //                         ),
// //                       ),
// //                       Align(
// //                         alignment: Alignment.bottomCenter,
// //                         child: Container(
// //                           height: 150,
// //                           width: 150,
// //                           decoration: BoxDecoration(
// //                             border: Border.all(width: 4, color: Colors.white),
// //                             borderRadius:
// //                                 const BorderRadius.all(Radius.circular(150)),
// //                             color: Colors.blue,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 5, bottom: 5),
// //                   child: Container(
// //                     width: 100,
// //                     height: 40,
// //                     decoration: const BoxDecoration(
// //                       color: Colors.red,
// //                       borderRadius: BorderRadius.all(Radius.circular(20)),
// //                     ),
// //                     child: const Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),)),
// //                     // child: CustomButton(
// //                     //   onPressed: () {},
// //                     //   child: Text("Edit Profile"),
// //                     // ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Expanded(
// //               child: Container(
// //                 width: Get.width,
// //                 color: AppTheme.primary,
// //                 // child: ,
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     )