import 'package:design_premium_account/constants/images_constant.dart';
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
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 44.07, horizontal: 18.06),
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
                  const SizedBox(
                    width: 30.05,
                  ),
                  Text(
                    StringConstant.exploreText,
                    style: AppStyles.boldText(
                        color: ColorConstants.bigStoneColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 40.31,
              ),
              Center(
                child: Text(
                  StringConstant.congratulationsText,
                  style: AppStyles.semiBoldText(
                      color: ColorConstants.bigStoneColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 28.58,
              ),
              Image.asset(
                ImageConstants.photo,
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                  child: Text(
                StringConstant.youAreText,
                style: AppStyles.regularText(
                    color: ColorConstants.bigStoneColor, fontSize: 17),
              )),
              Center(
                  child: Text(
                StringConstant.accountText,
                style: AppStyles.regularText(
                    color: ColorConstants.bigStoneColor, fontSize: 17),
              )),
              const Spacer(),
              Container(
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
                  child: Text(StringConstant.goToText,
                      textAlign: TextAlign.center,
                      style: AppStyles.boldText(
                          fontSize: 20,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.w600))),
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
}
