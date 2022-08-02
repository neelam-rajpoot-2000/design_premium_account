import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 43.07, horizontal: 25.03),
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
                height: 34,
              ),
              Center(
                  child: Text(
                StringConstant.informationText,
                style: AppStyles.semiBoldText(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              )),
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
                        gradient: LinearGradient(colors: [
                          ColorConstants.anakiwaColor,
                          ColorConstants.malibu2Color
                        ]), // Creates border
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
