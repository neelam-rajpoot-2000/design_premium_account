import 'package:design_premium_account/modules/login_screens/on_boarding/on_boarding_screen.dart';
import 'package:design_premium_account/modules/login_screens/sign_in/sign_in_screen.dart';
import 'package:design_premium_account/modules/profile/privacy_policy/privacy_policy_screen.dart';
import 'package:design_premium_account/routes/route_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';

import 'modules/checkout_options/abb_hobbies_get_permium.dart';
import 'modules/explore/explore_screens/explore_screen.dart';
import 'modules/likes_in_premium/app_hobbies_explore_liked_you.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  firebase_auth.FirebaseAuth firebaseAuth =firebase_auth.FirebaseAuth.instance;

  void signup() async {
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: 'neelamraj00@gmail.com', password: '1994545');
    }catch(e){
      print(e);
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('firebase'),

          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Sign Up'),
              onPressed: (){
                signup();
              },
            ),
          ),
        )
    );
  }
}