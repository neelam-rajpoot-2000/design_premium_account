import 'package:design_premium_account/constants/string_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';
import '../../constants/icons_constant.dart';
import '../../constants/style_constant.dart';
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 44.07,horizontal: 18.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      IconConstants.backward,
                      height: 15.68,
                      width: 8.89,
                      fit: BoxFit.contain,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                  SizedBox(width: 30.05,),
                  Text(StringConstant.exploreText,
                    style: AppStyles.boldText(
                        color: ColorConstants.bigStoneColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 40.31,),
              Center(
                child: Text(StringConstant.congratulationsText,
                  style: AppStyles.semiBoldText(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
