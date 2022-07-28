import 'package:design_premium_account/modules/login_screens/on_boarding/on_boarding_screen.dart';
import 'package:design_premium_account/modules/login_screens/sign_in/sign_in_screen.dart';
import 'package:design_premium_account/modules/profile/privacy_policy/privacy_policy_screen.dart';
import 'package:design_premium_account/routes/route_generator.dart';
import 'package:flutter/material.dart';

import 'modules/login_screens/add_hobbies/add_hobbies4_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies5_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies6_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies7_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies8_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_screen.dart';
import 'modules/login_screens/sign_up_about/sign_up_about_screen.dart';
import 'modules/profile/add_hobbies_profile/add_hobbies_profile_screen2.dart';
import 'modules/profile/information/information_screen.dart';
import 'modules/profile/profile_main/profile_main_screen2.dart';
import 'modules/profile/profile_main/profile_main.dart';
import 'modules/profile/profile_settings/profile_settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileMain1(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
