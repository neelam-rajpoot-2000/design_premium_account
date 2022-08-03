import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';
import '../../constants/icons_constant.dart';
import '../../routes/route_generator.dart';

class GetPermium extends StatefulWidget {
  const GetPermium({Key? key}) : super(key: key);

  @override
  State<GetPermium> createState() => _GetPermiumState();
}

class _GetPermiumState extends State<GetPermium> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List item = [
    {
      'title': StringConstant.unlimitedLikesText,
    },
    {
      'title': StringConstant.unlimitedHobbiesText,
    },
    {
      'title': StringConstant.changeYourLocationText,
    },
    {
      'title': StringConstant.seeProfilesText,
    },
    {
      'title': StringConstant.seeIfText,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mercuryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.06, vertical: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        IconConstants.backward,
                        height: 17.64,
                        width: 8.89,
                        fit: BoxFit.contain,
                        color: ColorConstants.hitGrayColor,
                      ),
                    ),
                    Center(
                      child: Text(
                        StringConstant.getPremiumText,
                        style: AppStyles.boldText(
                            color: ColorConstants.bigStoneColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Center(
                        child: Text(
                      StringConstant.chooseYourPlanText,
                      style: AppStyles.regularText(
                          color: ColorConstants.paleSkyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )),
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 29),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            ColorConstants.anakiwaColor,
                            ColorConstants.malibu2Color,
                          ]),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              StringConstant.premium1Text,
                              style: AppStyles.semiBoldText(
                                  color: ColorConstants.bigStoneColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              StringConstant.dollarText,
                              style: AppStyles.semiBoldText(
                                  color: ColorConstants.bigStoneColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 35),
                      decoration: BoxDecoration(
                        color: ColorConstants.whiteColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12.0),
                          bottomLeft: Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            StringConstant.saveUpText,
                            style: AppStyles.semiBoldText(
                                color: ColorConstants.blueColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 32),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 280,
                            child: ListView.builder(
                              itemCount: item.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return _buildCardViewWidget(
                                  title: item[index]['title'],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/pay')));
                      },
                      child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(vertical: 17),
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
                          child: Text(StringConstant.choosePlanText,
                              textAlign: TextAlign.center,
                              style: AppStyles.boldText(
                                  fontSize: 20,
                                  color: ColorConstants.whiteColor,
                                  fontWeight: FontWeight.w600))),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 250,
                  left: 133,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    decoration: BoxDecoration(
                        color: ColorConstants.whiteColor,
                        borderRadius: BorderRadius.circular(22)),
                    child: Text(
                      StringConstant.perMonthText,
                      style: AppStyles.semiBoldText(
                          color: ColorConstants.biscayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ))
            ],
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

  _buildCardViewWidget({
    required String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 26),
          child: Text(
            title,
            style: AppStyles.regularText(
            color: ColorConstants.bigStoneColor,
            fontSize: 18,
            fontWeight: FontWeight.w400),
          ),
        ),
        Divider(
          thickness: 1,
          color: ColorConstants.alto,
          indent: 10,
          endIndent: 10,
        ),

      ],
    );
  }
}
