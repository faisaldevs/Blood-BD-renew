
import 'package:blood_bd/screens/drawer_profile/edit_profile.dart';
import 'package:blood_bd/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/drawer_profile/components/medical_history_report.dart';
import '../screens/drawer_profile/drawer_pages/donation_accepted.dart';
import '../screens/drawer_profile/drawer_pages/donation_blocked.dart';
import '../screens/drawer_profile/drawer_pages/blood_history.dart';
import '../screens/drawer_profile/drawer_pages/medical_history.dart';
import '../screens/drawer_profile/drawer_pages/mySearch_history.dart';
import '../screens/drawer_profile/drawer_pages/notification_page.dart';
import '../screens/home_card_pages/blood_heroes_page.dart';
import '../screens/home_card_pages/feed_page.dart';
import '../screens/home_card_pages/request_blood.dart';
import '../screens/home_card_pages/search_donor_page.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/user_auth/welcome_screen.dart';



const splashScreen = "/";
const welcomePage = "/welcomePage";
// const login = "/login";
// const signupPage = "/signup";
// const otpPage = "/otpPage";
// const forgetOtpPage = "/forgetOtpPage";
const home = "/home";
const forgetPasswordPage = "/forgetPasswordPage";
const editProfile = "/editProfile";
const notificationPage = "/notificationPage";
const searchDonor = "/searchDonor";
const bloodHeroes = "/bloodHeroes";
const requestBlood = "/requestBlood";
const feedPage = "/feedPage";
const medicalHistory = "/medicalHistory";
const newReport = "/newReport";
const donationAccepted = "/donationAccepted";
const donationBlocked = "/donationBlocked";
const history = "/history";
const mySearchHistory = "/mySearchHistory";

final pages = [
  customPage(name: splashScreen, page:  const SplashScreen()),
  customPage(name: welcomePage, page:   WelcomePage()),
  // customPage(name: login, page: const LoginScreen()),
  // customPage(name: signupPage, page: const SignupPage()),
  // customPage(name: otpPage, page: const OtpVerificationPage()),
  // customPage(name: forgetOtpPage, page: const ForgetOtpVerificationPage()),
  // customPage(name: forgetPasswordPage, page: ForgetPasswordPage()),

  //-------------App Screens---------------------------

  customPage(name: home, page: HomeScreen()),
  customPage(name: searchDonor, page: const SearchDonor()),
  customPage(name: bloodHeroes, page: const BloodHeroes()),
  customPage(name: requestBlood, page: const RequestBlood()),
  customPage(name: feedPage, page: FeedPage()),


        //-------------Drawer Pages---------------------------


  customPage(name: editProfile, page:  EditProfile()),
  customPage(name: notificationPage, page: const NotificationPage()),
  customPage(name: medicalHistory, page: const MedicalHistory()),
  customPage(name: newReport, page: const NewReport()),
  customPage(name: donationAccepted, page: const DonationAccepted()),
  customPage(name: donationBlocked, page: const DonationBlocked()),
  customPage(name: history, page: const BloodHistory()),
  customPage(name: mySearchHistory, page: const MySearchHistory()),


];

GetPage customPage({required String name, required Widget page}) {
  return GetPage(
    name: name,
    page: () => page,
    transition: Transition.cupertino,
  );
}
