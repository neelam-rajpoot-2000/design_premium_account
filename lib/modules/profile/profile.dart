import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/icons_constant.dart';
import '../../constants/images_constant.dart';
class ProfileMain1 extends StatefulWidget {
  const ProfileMain1({Key? key}) : super(key: key);

  @override
  State<ProfileMain1> createState() => _ProfileMain1State();
}

class _ProfileMain1State extends State<ProfileMain1> {
  final List item = [
  {
  'title': StringConstant.informationText,
},
    {
      'title': StringConstant.hobbiesText,
    },
    {
      'title': StringConstant.searchText,
    },
    {
      'title': StringConstant.privacyPolicyText,
    },
    ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(
            child:  Image.asset(
              ImageConstants.background1,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 18.06),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          IconConstants.backward,
                          height: 15.86,
                          width: 8.89,
                          fit: BoxFit.contain,
                          color: ColorConstants.mineShaftColor,
                        ),
                        SizedBox(width: 30.05,),
                        Text(StringConstant.myProfileText,style: AppStyles.semiBoldText(color: ColorConstants.bigStoneColor,fontSize: 20,fontWeight: FontWeight.w500),),
                        Spacer(),
                        Image.asset(
                          IconConstants.close,
                          height: 24,
                          width: 24,
                          fit: BoxFit.contain,
                          color: ColorConstants.mineShaftColor,
                        ),
                      ],
                    ),
                  
                    ListView.builder(
                      itemCount: item.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return _buildCardViewWidget(
                          title: item[index]['title'],
                        );
                      },
                    ),
                  ],
                ),
              ) )
        ],
      ),
    ));
  }
  _buildCardViewWidget({ required String title}){
    Row(
      children: [
        Text(title,style: AppStyles.semiBoldText(fontSize: 20,fontWeight: FontWeight.w500,color: ColorConstants.bigStoneColor),),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding:EdgeInsets.symmetric(vertical: 12.05,horizontal: 12.65) ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: ColorConstants.bigStoneColor,width: 1)
          ),
          child: ClipRRect(child: Image.asset(IconConstants.backward,height: 10.01,width: 6.01,)),
        )
      ],
    );
  }
}
