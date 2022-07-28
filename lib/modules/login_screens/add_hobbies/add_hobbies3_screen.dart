import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
import '../../../routes/route_generator.dart';

class AddHobbies3 extends StatefulWidget {
  const AddHobbies3({Key? key}) : super(key: key);

  @override
  State<AddHobbies3> createState() => _AddHobbies3State();
}

class _AddHobbies3State extends State<AddHobbies3> {
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
        padding: const EdgeInsets.symmetric(vertical: 45.07, horizontal: 32.06),
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
              height: 39.07,
            ),
            Center(
                child: Text(
              StringConstant.addHobbiesText,
              style: AppStyles.boldText(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.bigStoneColor),
            )),
            const SizedBox(
              height: 36,
            ),
            Center(
                child: Text(
              StringConstant.youHaveOneHobbyText,
              style: AppStyles.regularText(
                  color: ColorConstants.bigStoneColor, fontSize: 16),
            )),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 152,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(colors: [
                      ColorConstants.anakiwaColor,
                      ColorConstants.malibu2Color,
                    ]),
                  ),
                  child: Text(
                    StringConstant.badmintonText,
                    style: AppStyles.boldText(
                        color: ColorConstants.bigStoneColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    IconConstants.pen,
                    height: 24,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 13.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    IconConstants.circleWithClose,
                    height: 27,
                    width: 27,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              StringConstant.intermediateText,
              style: AppStyles.regularText(
                  color: ColorConstants.bigStoneColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 1),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 17),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorConstants.bayOfManyColor, width: 2),
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                StringConstant.addNewHobbyText,
                textAlign: TextAlign.center,
                style: AppStyles.boldText(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ColorConstants.bayOfManyColor),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/addHobbies4')));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 17),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorConstants.orangeColor, width: 2),
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  StringConstant.nextStepText,
                  textAlign: TextAlign.center,
                  style: AppStyles.boldText(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ColorConstants.orangeColor),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.vector),
                size: 32,
              ),
              label: 'Direction',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.thumb),
              ),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.message),
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.person),
              ),
              label: 'Person',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConstants.orangeColor,
          unselectedItemColor: ColorConstants.paleSkyColor,
          onTap: _onItemTapped,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
        ),
      ),
    ));
  }
}
