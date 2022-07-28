import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
class AddHobbiesProfile extends StatefulWidget {
  const AddHobbiesProfile({Key? key}) : super(key: key);

  @override
  State<AddHobbiesProfile> createState() => _AddHobbiesProfileState();
}

class _AddHobbiesProfileState extends State<AddHobbiesProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
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
                    StringConstant.informationText,
                    style: AppStyles.semiBoldText(
                        color: ColorConstants.bigStoneColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
