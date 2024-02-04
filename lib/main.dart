import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'global/app_routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class PostHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = PostHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460, 909),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'BLOOD BD',
          // theme: ThemeData(
          //   textTheme: TextTheme(
          //     displayLarge: GoogleFonts.lobster(fontWeight: FontWeight.bold,fontSize: 40,color: color,)
          //   )
          //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //   // useMaterial3: true,
          // ),

          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          getPages: pages,
          initialRoute: splashScreen,
        );
      },
    );
  }
}
