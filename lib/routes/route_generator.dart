import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies2_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies3_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies4_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies5_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies6_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies7_screen.dart';
import 'package:design_premium_account/modules/login_screens/add_hobbies/add_hobbies8_screen.dart';
import 'package:flutter/material.dart';
import '../modules/login_screens/add_hobbies/add_hobbies_screen.dart';
import '../modules/login_screens/sign_in/facebook_google.dart';
import '../modules/login_screens/sign_in/sign_in_screen.dart';
import '../modules/login_screens/sign_up_about/sign_up_about_screen.dart';
import '../modules/profile/add_hobbies_profile/add_hobbies_profile_screen.dart';
import '../modules/profile/information/information_screen.dart';

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
      case '/addHobbies2':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies2(),
        );
      case '/addHobbies3':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies3(),
        );
      case '/addHobbies4':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies4(),
        );
      case '/addHobbies5':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies5(),
        );
      case '/addHobbies6':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies6(),
        );
      case '/addHobbies7':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies7(),
        );
      case '/addHobbies8':
        return MaterialPageRoute(
          builder: (_) => const AddHobbies8(),
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
      case '/addHobbiesProfile':
        return MaterialPageRoute(
          builder: (_) => const AddHobbiesProfile(),
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
