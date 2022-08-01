import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/images_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';
import '../../../routes/route_generator.dart';

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
              const SizedBox(
                height: 53,
              ),
              Text(
                StringConstant.whateverText,
                style: AppStyles.semiBoldText(
                    color: ColorConstants.balticSeaColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                StringConstant.findText,
                style: AppStyles.semiBoldText(
                    color: ColorConstants.balticSeaColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6),
              ),
              const SizedBox(
                height: 29,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      RouteGenerator.generateRoute(
                          const RouteSettings(name: '/signUpAbout')));
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 80),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstants.yellowOrangeColor,
                            blurRadius: 10.0,
                            offset: const Offset(0.0, 2),
                          ),
                        ],
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
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                 Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/signIn')));
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
