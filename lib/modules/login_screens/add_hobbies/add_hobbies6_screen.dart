import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';

class AddHobbies6 extends StatefulWidget {
  const AddHobbies6({Key? key}) : super(key: key);

  @override
  State<AddHobbies6> createState() => _AddHobbies6State();
}

class _AddHobbies6State extends State<AddHobbies6> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List item = [
    {
      'title': StringConstant.badmintonText,
    },
    {
      'title': StringConstant.photographyText,
    },
    {
      'title': StringConstant.surfingText,
    }
  ];
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
              height: 24,
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  children: List.generate(item.length, (index) {
                    return _buildCardViewWidget(
                      title: item[index]['title'],
                    );
                  }),
                ),
              ),
            ),
            const Spacer(),
            Container(
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

  _buildCardViewWidget({
    required String title,
  }) {
    return Column(
      children: [
        Container(
          height: 32,
          width: 152,
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [
              ColorConstants.anakiwaColor,
              ColorConstants.malibu2Color,
            ]),
          ),
          child: Row(
            children: [
              Text(
                title,
                style: AppStyles.boldText(
                    color: ColorConstants.bigStoneColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              const Spacer(),
              Image.asset(
                IconConstants.circleWithClose,
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ],
    );
  }
}
