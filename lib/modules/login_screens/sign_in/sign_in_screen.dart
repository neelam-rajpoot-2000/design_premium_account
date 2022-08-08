import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/icons_constant.dart';
import 'package:design_premium_account/constants/images_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../../routes/route_generator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  firebase_auth.FirebaseAuth firebaseAuth =firebase_auth.FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool circular= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 45.07, horizontal: 32.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    IconConstants.backward,
                    height: 15.86,
                    width: 8.89,
                    fit: BoxFit.contain,
                    color: ColorConstants.bigStoneColor,
                  ),
                ),
                const SizedBox(
                  height: 25.07,
                ),
                Center(
                    child: Text(
                  StringConstant.helloText,
                  style: AppStyles.boldText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                )),
                const SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text(
                    StringConstant.signInAccountText,
                    style: TextStyle(
                        color: ColorConstants.paleSkyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  StringConstant.emailText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.hitGrayColor,
                      ),
                    ),
                    hintText: StringConstant.profileText,
                    hintStyle: TextStyle(
                        color: ColorConstants.alto,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  StringConstant.passwordText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.hitGrayColor,
                      ),
                    ),
                    hintText: StringConstant.enterPasswordText,
                    hintStyle: AppStyles.regularText(
                        color: ColorConstants.alto,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      StringConstant.forgotText,
                      style: AppStyles.regularText(
                          color: ColorConstants.paleSkyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          isUnderline: true),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () async{
                    try{
                      firebase_auth.UserCredential userCredentials = await firebaseAuth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
                      print(userCredentials.user?.email);
                      setState((){
                        circular=false;
                      });
                       Navigator.push(
                          context,
                          RouteGenerator.generateRoute(
                              const RouteSettings(name: '/signUpAbout')));
                    }
                        catch(e){
                          final snackbar =SnackBar(content: Text(e.toString()));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState((){
                            circular=false;
                          });
                        }
                  },
                  child: Container(
                      height: 58,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: ColorConstants.yellowOrangeColor,
                            blurRadius: 10.0,
                            offset: const Offset(0.0,  2),
                          ),],
                          gradient: LinearGradient(colors: [
                            ColorConstants.sunshadeColor,
                            ColorConstants.orangeColor,
                          ]),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(StringConstant.signInText,
                          textAlign: TextAlign.center,
                          style: AppStyles.boldText(
                              fontSize: 20,
                              color: ColorConstants.whiteColor,
                              fontWeight: FontWeight.w600))),
                ),
                const SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    Image.asset(
                      IconConstants.dots,
                      width: 130,
                      color: ColorConstants.dustyGrayColor,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(StringConstant.orWithText,
                        style: AppStyles.regularText(
                            fontSize: 12,
                            color: ColorConstants.dustyGrayColor,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      IconConstants.dots,
                      width: 130,
                      color: ColorConstants.dustyGrayColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/webViewScreen')));
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConstants.bigStoneColor, width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstants.google,
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          circular?const CircularProgressIndicator(value: 2,):
                          Text(StringConstant.signInGoggleText,
                              style: AppStyles.semiBoldText(
                                  fontSize: 16,
                                  color: ColorConstants.bigStoneColor,
                                  fontWeight: FontWeight.w500)),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/webViewScreen2')));
                  },
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConstants.bigStoneColor, width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstants.facebook,
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(StringConstant.signInFacebookText,
                              style: AppStyles.semiBoldText(
                                  fontSize: 16,
                                  color: ColorConstants.bigStoneColor,
                                  fontWeight: FontWeight.w500)),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.donTText,
                      style: AppStyles.regularText(
                          color: ColorConstants.paleSkyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () async{
                       setState((){
                         circular=true;
                       });
                        try{
                          firebase_auth.UserCredential userCredential= await firebaseAuth.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
                          print(userCredential.user?.email);
                          setState((){
                            circular=false;
                          });
                          Navigator.push(
                              context,
                              RouteGenerator.generateRoute(
                                  const RouteSettings(name: '/signUpAbout')));
                        }catch(e){
                          final snackbar =SnackBar(content: Text(e.toString()));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState((){
                            circular=false;
                          });
                        }
                      },
                      child:circular?const CircularProgressIndicator(): Text(
                        StringConstant.signUpText,
                        style: AppStyles.regularText(
                            color: ColorConstants.malibuColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            isUnderline: true),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
