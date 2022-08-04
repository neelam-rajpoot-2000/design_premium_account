import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';
import '../../constants/icons_constant.dart';
import '../../constants/string_constant.dart';
import '../../constants/style_constant.dart';
class AddHobbiesExploreLikedYou extends StatefulWidget {
  const AddHobbiesExploreLikedYou({Key? key}) : super(key: key);

  @override
  State<AddHobbiesExploreLikedYou> createState() => _AddHobbiesExploreLikedYouState();
}

class _AddHobbiesExploreLikedYouState extends State<AddHobbiesExploreLikedYou> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.03,vertical: 44.07),
            child: Column(
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
                        color: ColorConstants.blackColor,
                      ),
                    ),
                    SizedBox(width: 30.05,),
                    Text(
                      StringConstant.exploreText,
                      style: AppStyles.regularText(
                          color: ColorConstants.bigStoneColor,
                          fontSize: 20),
                    ),
                    Spacer(),
                    Image.asset(
                      IconConstants.lines,
                      height: 24.42,
                      width: 26,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                SizedBox(height: 33,),
                Text(StringConstant.likedYouText,style: AppStyles.regularText(color: ColorConstants.bigStoneColor,fontSize: 28,letterSpacing: 0.5),),
                SizedBox(height: 32,),
                TabBar(
                  onTap: (value){
                    setState((){
                      index=value;
                    });
                  },
                  tabs: <Widget>[
                      Container(
                        //padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:Border.all(color:index==0?Colors.transparent: ColorConstants.paleSkyColor),
                        ),
                        child: Text(StringConstant.allText),
                      ),
                    Container(
                     // padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color:index==1?Colors.transparent: ColorConstants.paleSkyColor),
                      ),
                      child: Text(StringConstant.badmintonText),
                    ),
                    Container(
                     // padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: index==2?Colors.transparent: ColorConstants.paleSkyColor),
                      ),
                      child: Text(StringConstant.photographyText),
                    )


                  ],
                  unselectedLabelColor: ColorConstants.bigStoneColor,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                      color:ColorConstants.malibu2Color,

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
