import 'package:design_premium_account/modules/login_screens/on_boarding/on_boarding_screen.dart';
import 'package:design_premium_account/modules/login_screens/sign_in/sign_in_screen.dart';
import 'package:design_premium_account/modules/profile/privacy_policy.dart';
import 'package:flutter/material.dart';

import 'modules/login_screens/add_hobbies/add_hobbies4_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies5_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies6_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies7_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies8_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_screen.dart';
import 'modules/login_screens/sign_up_about/sign_up_about_screen.dart';
import 'modules/profile/profile.dart';
import 'modules/profile/profile_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
