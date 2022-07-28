import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
class AddHobbiesProfile2 extends StatefulWidget {
  const AddHobbiesProfile2({Key? key}) : super(key: key);

  @override
  State<AddHobbiesProfile2> createState() => _AddHobbiesProfile2State();
}

class _AddHobbiesProfile2State extends State<AddHobbiesProfile2> {
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
           padding: const EdgeInsets.symmetric(
               vertical: 43.07, horizontal: 18.06),
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
                     StringConstant.myHobbiesText,
                     style: AppStyles.semiBoldText(
                         color: ColorConstants.bigStoneColor,
                         fontSize: 28,
                         fontWeight: FontWeight.w500),
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
                 margin: EdgeInsets.symmetric(horizontal: 10),
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
               Container(
                   height: 58,
                   width: double.infinity,
                   margin: EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
