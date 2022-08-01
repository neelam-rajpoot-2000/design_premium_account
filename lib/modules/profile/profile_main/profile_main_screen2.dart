import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';

import '../../../constants/icons_constant.dart';
import '../../../constants/images_constant.dart';
import '../../../routes/route_generator.dart';

class ProfileMain1 extends StatefulWidget {
  const ProfileMain1({Key? key}) : super(key: key);

  @override
  State<ProfileMain1> createState() => _ProfileMain1State();
}

class _ProfileMain1State extends State<ProfileMain1> {
  final List item = [
    {
      'title': StringConstant.informationText,
    },
    {
      'title': StringConstant.hobbiesText,
    },
    {
      'title': StringConstant.searchText,
    },
    {
      'title': StringConstant.privacyPolicyText,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:
          Stack(
            children: [
              Image.asset(
                ImageConstants.background1,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40.07, horizontal: 18.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          IconConstants.backward,
                          height: 15.86,
                          width: 8.89,
                          fit: BoxFit.contain,
                          color: ColorConstants.mineShaftColor,
                        ),
                        SizedBox(
                          width: 30.05,
                        ),
                        Text(
                          StringConstant.myProfileText,
                          style: AppStyles.semiBoldText(
                              color: ColorConstants.bigStoneColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Image.asset(
                          IconConstants.close,
                          height: 24,
                          width: 24,
                          fit: BoxFit.contain,
                          color: ColorConstants.bigStoneColor,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 90),
                        itemCount: item.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildCardViewWidget(
                            index: index,
                            title: item[index]['title'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
         bottomNavigationBar:
          Text(
            StringConstant.logOutText,
            textAlign: TextAlign.center,
            style: AppStyles.regularText(
                color: ColorConstants.bigStoneColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                isUnderline: true),
          ),

    ));
  }

  _buildCardViewWidget({required String title, required index}) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(
              context,
              RouteGenerator.generateRoute(
                  const RouteSettings(name: '/information')));
        } else if (index == 1) {
          Navigator.push(
              context,
              RouteGenerator.generateRoute(
                  const RouteSettings(name: '/myHobbiesBadminton')));
        } else if (index == 2) {
          Navigator.push(
              context,
              RouteGenerator.generateRoute(
                  const RouteSettings(name: '/profileSettings')));
        } else if (index == 3) {
          Navigator.push(
              context,
              RouteGenerator.generateRoute(
                  const RouteSettings(name: '/privacyPolicy')));
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.regularText(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: ColorConstants.bigStoneColor),
          ),
          Container(
            margin: const EdgeInsets.all(18),
            padding: const EdgeInsets.only(
                left: 14.49, right: 14.5, top: 12.49, bottom: 12.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border:
                    Border.all(color: ColorConstants.bigStoneColor, width: 1)),
            child: ClipRRect(
                child: Image.asset(
              IconConstants.forward,
              height: 10.01,
              width: 6.01,
            )),
          ),
        ],
      ),
    );
  }
}
