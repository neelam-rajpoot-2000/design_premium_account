import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 44.06, horizontal: 18.06),
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
                      height: 15.86,
                      width: 8.89,
                      fit: BoxFit.contain,
                      color: ColorConstants.mineShaftColor,
                    ),
                  ),
                  const SizedBox(
                    width: 30.05,
                  ),
                  Text(
                    StringConstant.myProfileText,
                    style: AppStyles.semiBoldText(
                        color: ColorConstants.bigStoneColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.31,
              ),
              Center(
                  child: Text(
                StringConstant.searchSettingsText,
                style: AppStyles.semiBoldText(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 21.58,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                height: 116,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.alto, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.genderText,
                      style: AppStyles.semiBoldText(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorConstants.bigStoneColor),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    DefaultTabController(
                      length: 3,
                      child: TabBar(
                        unselectedLabelColor: ColorConstants.bigStoneColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          gradient: LinearGradient(colors: [
                            ColorConstants.anakiwaColor,
                            ColorConstants.malibu2Color
                          ]), // Creates border
                        ), //Change background color from here
                        tabs: [
                          Tab(
                              child: Text(
                            StringConstant.maleText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          Tab(
                              child: Text(
                            StringConstant.femaleText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                          Tab(
                              child: Text(
                            StringConstant.bothText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.alto, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            StringConstant.distanceText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            StringConstant.kmText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            StringConstant.maxText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 37),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorConstants.alto, width: 1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              StringConstant.thirtyFiveText,
                              style: AppStyles.regularText(
                                  color: ColorConstants.blackColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Slider(
                          value: _value.toDouble(),
                          min: 1.0,
                          max: 20.0,
                          divisions: 10,
                          activeColor: ColorConstants.malibu2Color,
                          inactiveColor: ColorConstants.alto,
                          label: 'Distance',
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          })
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
