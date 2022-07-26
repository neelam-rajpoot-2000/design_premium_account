import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';

class AddHobbies7 extends StatefulWidget {
  const AddHobbies7({Key? key}) : super(key: key);

  @override
  State<AddHobbies7> createState() => _AddHobbies7State();
}

class _AddHobbies7State extends State<AddHobbies7> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
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
                SizedBox(height: 42,),

              ],
            ),
          ),
        ),

    );
  }
  _buildCardViewWidget({
    required String title,
    required String subtitle,
  }){

  }
}
