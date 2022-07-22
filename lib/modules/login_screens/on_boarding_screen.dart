import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/images_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:design_premium_account/modules/login_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  ImageConstants.background,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 53,
              ),
              Text(
                StringConstant.whateverText,
                style: AppStyles.semiBoldText(
                  color: ColorConstants.balticSeaColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                StringConstant.findText,
                style: AppStyles.semiBoldText(
                  color: ColorConstants.balticSeaColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 17, horizontal: 80),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        ColorConstants.sunshadeColor,
                        ColorConstants.orangeColor,
                      ]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(StringConstant.createAccountText,
                      textAlign: TextAlign.center,
                      style: AppStyles.boldText(
                          fontSize: 20,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.w600))),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
                child: Text(
                  StringConstant.signInText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bayOfManyColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              )
            ],
          ),
          Positioned(
              top: 230,
              left: 5,
              child: Image.asset(
                ImageConstants.bubbee,
                fit: BoxFit.cover,
              ))
        ],
      ),
    ));
  }
}
