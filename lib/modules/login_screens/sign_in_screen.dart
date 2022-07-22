import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/icons_constant.dart';
import 'package:design_premium_account/constants/images_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                Image.asset(
                  IconConstants.forward,
                  height: 15.86,
                  width: 8.89,
                  fit: BoxFit.contain,
                ),
                SizedBox(
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
                SizedBox(
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
                SizedBox(
                  height: 34,
                ),
                Text(
                  StringConstant.emailText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.alto,
                      ),
                    ),
                    hintText: StringConstant.profileText,
                    hintStyle: TextStyle(
                        color: ColorConstants.alto,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  StringConstant.passwordText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,

                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.alto,
                      ),
                    ),
                    hintText: StringConstant.enterPasswordText,
                    hintStyle:AppStyles.regularText(
                        color: ColorConstants.alto,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
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
                SizedBox(
                  height: 24,
                ),
                Container(
                    height: 58,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
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
                SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    Image.asset(
                      IconConstants.dots,
                      width: 130,
                      color: ColorConstants.dustyGrayColor,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(StringConstant.orWithText,
                        style: AppStyles.regularText(
                            fontSize: 12,
                            color: ColorConstants.dustyGrayColor,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      IconConstants.dots,
                      width: 130,
                      color: ColorConstants.dustyGrayColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 14),
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(StringConstant.signInGoggleText,
                            style: AppStyles.semiBoldText(
                                fontSize: 16,
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w500)),
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 14),
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
                        SizedBox(
                          width: 8,
                        ),
                        Text(StringConstant.signInFacebookText,
                            style: AppStyles.semiBoldText(
                                fontSize: 16,
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w500)),
                      ],
                    )),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Text(
                      StringConstant.donTText,
                      style: AppStyles.regularText(
                          color: ColorConstants.paleSkyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    SizedBox(width: 4,),
                    Text(StringConstant.signUpText, style: AppStyles.regularText(
                        color: ColorConstants.malibuColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,isUnderline: true),)
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
