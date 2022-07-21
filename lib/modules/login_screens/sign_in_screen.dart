import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/icons_constant.dart';
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
      body: SafeArea(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
