import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/icons_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';

class PrivancyPolicy extends StatefulWidget {
  const PrivancyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivancyPolicy> createState() => _PrivancyPolicyState();
}

class _PrivancyPolicyState extends State<PrivancyPolicy> {
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
            padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 18.06),
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
                      ),
                    ),
                    SizedBox(width: 30.05,),
                    Text(StringConstant.privacyPolicyText,style: AppStyles.regularText(color:ColorConstants.bigStoneColor,fontSize:20,fontWeight: FontWeight.w500  ),),

                  ],
                ),
                SizedBox(height: 41,),
                Text(StringConstant.effectiveText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontWeight: FontWeight.w400,fontSize: 16,wordSpacing: 4),),
                SizedBox(height: 30,),
                Text(StringConstant.viewText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontWeight: FontWeight.w400,fontSize: 16,wordSpacing: 4,),),
                SizedBox(height: 30,),
                Text(StringConstant.ourText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontWeight: FontWeight.w400,fontSize: 16,wordSpacing: 4,letterSpacing: 1.5),),
                SizedBox(height: 30,),
                Text(StringConstant.thisText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontWeight: FontWeight.w400,fontSize: 16,wordSpacing: 4,letterSpacing: 1.5),),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  SizedBox(
        height: 70,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.vector),
                size: 25,
              ),
              label: 'Direction',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.message),
                size: 25,
              ),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(IconConstants.thumb),
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
    );
  }
}
