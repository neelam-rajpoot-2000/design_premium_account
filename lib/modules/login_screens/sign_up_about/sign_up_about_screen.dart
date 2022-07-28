import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:design_premium_account/routes/route_generator.dart';
import 'package:flutter/material.dart';

import '../../../constants/icons_constant.dart';

class SignUpAbout extends StatefulWidget {
  const SignUpAbout({Key? key}) : super(key: key);

  @override
  State<SignUpAbout> createState() => _SignUpAboutState();
}


class _SignUpAboutState extends State<SignUpAbout> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 45.07, horizontal: 32.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                IconConstants.backward,
                height: 15.86,
                width: 8.89,
                fit: BoxFit.contain,
                color: ColorConstants.hitGrayColor,
              ),
            ),
            const SizedBox(
              height: 36.07,
            ),
            Center(
              child: Text(
                StringConstant.tellText,
                style: AppStyles.semiBoldText(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    wordSpacing: 2,
                    letterSpacing: 1,
                    color: ColorConstants.bigStoneColor),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Text(
              StringConstant.nameText,
              style: AppStyles.regularText(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorConstants.bigStoneColor),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: ColorConstants.alto,
                  ),
                ),
                hintText: StringConstant.nameText,
                hintStyle: TextStyle(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              StringConstant.dateOfDateText,
              style: AppStyles.regularText(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorConstants.bigStoneColor),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: ColorConstants.alto,
                  ),
                ),
                hintText: StringConstant.dateOfDateText,
                hintStyle: TextStyle(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              StringConstant.genderText,
              style: AppStyles.semiBoldText(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorConstants.bigStoneColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 58,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.alto, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DefaultTabController(
                length: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TabBar(
                    unselectedLabelColor: ColorConstants.bigStoneColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.anakiwaColor,
                          ColorConstants.malibu2Color
                        ]
                      ),// Creates border
                    ), //Change background color from here
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_outlined,
                              color: ColorConstants.bigStoneColor,
                              size: 32,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              StringConstant.maleText,
                              style: AppStyles.regularText(
                                  color: ColorConstants.bigStoneColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_outlined,
                              color: ColorConstants.bigStoneColor,
                              size: 32,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              StringConstant.femaleText,
                              style: AppStyles.regularText(
                                  color: ColorConstants.bigStoneColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/addHobbies')));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 17),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.orangeColor,width: 2),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Text(StringConstant.nextStepText,textAlign:TextAlign.center,style: AppStyles.boldText(fontWeight: FontWeight.w600,fontSize: 16,color: ColorConstants.orangeColor),),
              ),
            )
          ],
        ),
      ),
          bottomNavigationBar:  SizedBox(
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
                  icon:  ImageIcon(
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
    ),
    );
  }
}
