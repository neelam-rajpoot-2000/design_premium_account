import 'package:design_premium_account/constants/images_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';
import '../../constants/icons_constant.dart';
import '../../constants/string_constant.dart';
import '../../constants/style_constant.dart';
import '../../routes/route_generator.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    final List item = [
      {
        'title': StringConstant.unlimitedLikesText,
      },
      {
        'title': StringConstant.unlimitedHobbiesText,
      },
      {
        'title': StringConstant.changeYourLocationText,
      },
      {
        'title': StringConstant.seeProfilesText,
      },
      {
        'title': StringConstant.seeIfText,
      }
    ];
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.06, vertical: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                IconConstants.backward,
                height: 17.64,
                width: 8.89,
                fit: BoxFit.contain,
                color: ColorConstants.hitGrayColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                StringConstant.getPremiumText,
                style: AppStyles.boldText(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 30,
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
            const SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  _settingModalBottomSheet(context);
                },
                child: Text(
                  StringConstant.chooseYourPlanText,
                  style: AppStyles.regularText(
                      color: ColorConstants.bigStoneColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  _buildCardViewWidget({
    required String title,
  }) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorConstants.sunshadeColor,
                  ColorConstants.orangeColor,
                ]),
                borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              IconConstants.ryt,
              height: 15,
              width: 15,
              fit: BoxFit.cover,
            )),
        Expanded(
          child: Text(
            title,
            style: AppStyles.regularText(
                color: ColorConstants.bigStoneColor,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.45,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      IconConstants.pay,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      StringConstant.cancelText,
                      style: AppStyles.regularText(
                          color: ColorConstants.redColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: ColorConstants.athensGrayColor,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const SizedBox(width:40 ,),
                    Image.asset(
                      ImageConstants.cards,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      StringConstant.vivaText,
                      style: AppStyles.boldText(
                          color: ColorConstants.blackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2),
                    ),
                    const Spacer(),
                    Image.asset(
                      IconConstants.forward1,
                      height: 20,
                      width: 10,
                      fit: BoxFit.cover,
                      color: ColorConstants.orangeColor,
                    )
                  ],
                ),
                Divider(
                  color: ColorConstants.athensGrayColor,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const SizedBox(width: 100,),
                    Text(StringConstant.payText,
                      style: AppStyles.boldText(
                        color: ColorConstants.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,),),
                    const Spacer(),
                    Text(StringConstant.dollar1Text,
                      style: AppStyles.boldText(
                        color: ColorConstants.blackColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,),),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: ColorConstants.athensGrayColor,
                  thickness: 1,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/explore')));
                    },
                    child: Image.asset(IconConstants.img,)),
                const SizedBox(height: 4,),
                Text(StringConstant.confirmText, style: AppStyles.boldText(
                  color: ColorConstants.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,letterSpacing:  -0.24),)
              ],
            ),
          );
        });
  }
}
