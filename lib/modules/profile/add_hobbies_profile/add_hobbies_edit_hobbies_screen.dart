import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
class EditHobbies extends StatefulWidget {
  const EditHobbies({Key? key}) : super(key: key);

  @override
  State<EditHobbies> createState() => _EditHobbiesState();
}

class _EditHobbiesState extends State<EditHobbies> {
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
                      StringConstant.editHobbiesText,
                      style: AppStyles.semiBoldText(
                          color: ColorConstants.bigStoneColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,letterSpacing: 0.2),
                    )),
                SizedBox(height: 29,),
                Text(StringConstant.letText,style:AppStyles.regularText(color: ColorConstants.bigStoneColor,fontSize: 16,fontWeight: FontWeight.w400),),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined,
                        color: ColorConstants.dustyGrayColor, size: 30),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.hitGrayColor,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(colors: [
                          ColorConstants.anakiwaColor,
                          ColorConstants.malibu2Color,
                        ]),
                      ),
                      child: Text(
                        StringConstant.photographyText,
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
                SizedBox(height: 40,),
                Text(StringConstant.addDescriptionText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontWeight: FontWeight.w400,fontSize: 16),),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      top: 18,
                      left: 16.54,
                      right: 44.46,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstants.alto,
                      ),
                    ),
                    hintText: StringConstant.iLoveText,
                    hintStyle: AppStyles.regularText(
                        color: ColorConstants.bigStoneColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                        letterSpacing: 0.5),
                  ),
                ),
                Spacer(),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
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
