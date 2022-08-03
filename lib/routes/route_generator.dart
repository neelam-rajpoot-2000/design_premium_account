import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_badminton_one_hobby_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_surfing_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_badminton_photography_surfing_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_add_three_hobbies_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_add_photos_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies_add_photos_and_delete_also_screen.dart';
import 'package:flutter/material.dart';
import '../modules/checkout_options/abb_hobbies_pay.dart';
import '../modules/checkout_options/add_hobbies_explore.dart';
import '../modules/login_screens/add_hobbies/add_hobbies_badminton_screen.dart';
import '../modules/login_screens/add_hobbies/add_hobbies_screen.dart';
import '../modules/login_screens/sign_in/facebook_google.dart';
import '../modules/login_screens/sign_in/sign_in_screen.dart';
import '../modules/login_screens/sign_up_about/sign_up_about_screen.dart';
import '../modules/profile/add_hobbies_profile/add_hobbies_my_hobbies_badminton.dart';
import '../modules/profile/information/information_screen.dart';
import '../modules/profile/privacy_policy/privacy_policy_screen.dart';
import '../modules/profile/profile_settings/profile_settings_search_settings_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signIn':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case '/signUpAbout':
        return MaterialPageRoute(
          builder: (_) => const SignUpAbout(),
        );
      case '/addHobbies':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies(),
        );
      case '/addHobbiesBadminton':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesBadminton(),
        );
      case '/addHobbiesBadmintonOneHobby':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesBadmintonOneHobby(),
        );
      case '/addHobbiesSurfing':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesSurfing(),
        );
      case '/addHobbiesBadmintonPhotographySurfing':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesBadmintonPhotographySurfing(),
        );
      case '/addHobbiesAddThreeHobbies':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesAddThreeHobbies(),
        );
      case '/addHobbiesAddPhoto':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesAddPhoto(),
        );
      case '/addHobbiesAddPhotoAndDelete':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesAddPhotoAndDelete(),
        );
      case '/webViewScreen':
        return MaterialPageRoute(
          builder: (_) => const WebViewScreen(
            url:
                'https://accounts.google.com/AddSession/signinchooser?service=accountsettings&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1&ec=GAlAwAE&flowName=GlifWebSignIn&flowEntry=AddSession',
          ),
        );
      case '/webViewScreen2':
        return MaterialPageRoute(
          builder: (_) => const WebViewScreen(url: 'https://www.facebook.com/'),
        );
      case '/information':
        return MaterialPageRoute(
          builder: (_) => const Information(),
        );
      case '/profileSettings':
        return MaterialPageRoute(
          builder: (_) => const ProfileSettings(),
        );
      case '/privacyPolicy':
        return MaterialPageRoute(
          builder: (_) => const PrivancyPolicy(),
        );
      case '/myHobbiesBadminton':
        return MaterialPageRoute(
          builder: (_) => const MyHobbiesBadminton(),
        );
      case '/pay':
        return MaterialPageRoute(
          builder: (_) => const Pay(),
        );
      case '/explore':
        return MaterialPageRoute(
          builder: (_) => const Explore(),
        );


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
