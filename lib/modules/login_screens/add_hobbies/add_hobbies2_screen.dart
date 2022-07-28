import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
import '../../../routes/route_generator.dart';

class AddHobbies2 extends StatefulWidget {
  const AddHobbies2({Key? key}) : super(key: key);

  @override
  State<AddHobbies2> createState() => _AddHobbies2State();
}

class _AddHobbies2State extends State<AddHobbies2> {
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
              height: 21,
            ),
            Text(
              StringConstant.searchsText,
              style: AppStyles.regularText(
                  color: ColorConstants.bigStoneColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined,
                    color: ColorConstants.dustyGrayColor, size: 30),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: ColorConstants.alto,
                  ),
                ),
                hintText: StringConstant.searchForHobbiesText,
                hintStyle: TextStyle(
                    color: ColorConstants.alto,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 152,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                Image.asset(
                  IconConstants.circleWithClose,
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              StringConstant.lookingForText,
              style: AppStyles.semiBoldText(
                  color: ColorConstants.bigStoneColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              maxLines: 3,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(top: 11,left: 15.5,right: 45.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: ColorConstants.alto,
                  ),
                ),
                hintText: StringConstant.someInfoText,
                hintStyle: TextStyle(
                    color: ColorConstants.alto,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/addHobbies3')));
              },
              child: Container(
                  height: 58,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: ColorConstants.yellowOrangeColor,
                        blurRadius: 10.0,
                        offset: const Offset(0.0,  2),
                      ),],
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
