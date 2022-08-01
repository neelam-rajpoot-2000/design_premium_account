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
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
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
                      const SizedBox(
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
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 14),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorConstants.alto, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(16),
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
                            const Spacer(),
                            Text(
                              StringConstant.kmText,
                              style: AppStyles.regularText(
                                  color: ColorConstants.bigStoneColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
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
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
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
                            }),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.alto, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            StringConstant.ageText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const Spacer(),
                          Text(
                            StringConstant.Text,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.26,
                      ),
                      Row(
                        children: [
                          Text(
                            StringConstant.fromText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
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
                          ),
                          const Spacer(),
                          Text(
                            StringConstant.toText,
                            style: AppStyles.regularText(
                                color: ColorConstants.bigStoneColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
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
                      SizedBox(
                        height: 45,
                        child: RangeSlider(
                          values: _currentRangeValues,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: ColorConstants.malibu2Color,
                          inactiveColor: ColorConstants.alto,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                    height: 58,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(vertical: 14),
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
                    child: Text(StringConstant.saveText,
                        textAlign: TextAlign.center,
                        style: AppStyles.boldText(
                            fontSize: 20,
                            color: ColorConstants.whiteColor,
                            fontWeight: FontWeight.w600))),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.vector),
                size: 25,
              ),
              label: 'Direction',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.thumb),
                size: 25,
              ),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.message),
                size: 25,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.person),
                size: 25,
              ),
              label: 'Person',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConstants.orangeColor,
          unselectedItemColor: ColorConstants.paleSkyColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
