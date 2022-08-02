import 'package:design_premium_account/modules/login_screens/on_boarding/on_boarding_screen.dart';
import 'package:design_premium_account/modules/login_screens/sign_in/sign_in_screen.dart';
import 'package:design_premium_account/modules/profile/privacy_policy/privacy_policy_screen.dart';
import 'package:design_premium_account/routes/route_generator.dart';
import 'package:flutter/material.dart';

import 'modules/explore/explore_screens/explore_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_badminton_one_hobby_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_badminton_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_surfing_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_badminton_photography_surfing_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_add_three_hobbies_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_add_photos_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_add_photos_and_delete_also_screen.dart';
import 'modules/login_screens/add_hobbies/add_hobbies_screen.dart';
import 'modules/login_screens/sign_up_about/sign_up_about_screen.dart';
import 'modules/profile/add_hobbies_profile/add_hobbies_edit_hobbies_screen.dart';
import 'modules/profile/add_hobbies_profile/add_hobbies_gallery.dart';
import 'modules/profile/add_hobbies_profile/add_hobbies_my_hobbies_badminton.dart';
import 'modules/profile/add_hobbies_profile/add_hobbies_my_hoobies.dart';
import 'modules/profile/information/information_screen.dart';
import 'modules/profile/profile_main/profile_main_screen2.dart';
import 'modules/profile/profile_main/profile_main.dart';
import 'modules/profile/profile_settings/profile_settings_search_settings_screen.dart';

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
      home: ExploreScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
