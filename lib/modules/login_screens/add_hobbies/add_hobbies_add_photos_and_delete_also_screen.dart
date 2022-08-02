import 'package:flutter/material.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/images_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
import '../../../routes/route_generator.dart';

class AddHobbiesAddPhotoAndDelete extends StatefulWidget {
  const AddHobbiesAddPhotoAndDelete({Key? key}) : super(key: key);

  @override
  State<AddHobbiesAddPhotoAndDelete> createState() =>
      _AddHobbiesAddPhotoAndDeleteState();
}

class _AddHobbiesAddPhotoAndDeleteState
    extends State<AddHobbiesAddPhotoAndDelete> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List items = [
    {'title': StringConstant.mainPhotoText, 'icon1': IconConstants.star},
    {'title': StringConstant.deleteText, 'icon1': IconConstants.close},
  ];
  final List item = [
    {'imageUrl1': ImageConstants.man1, 'icon1': IconConstants.right},
    {'imageUrl1': ImageConstants.business, 'icon1': IconConstants.right},
    {'imageUrl1': ImageConstants.army, 'icon1': IconConstants.right},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
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
              height: 42,
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: item.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 150,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _buildCardViewWidget(
                    index: index,
                    icon1: item[index]['icon1'],
                    imageUrl1: item[index]['imageUrl1'],
                  );
                },
              ),
            ),
            Center(
                child: Text(
              StringConstant.youCanSetText,
              style: AppStyles.regularText(
                  color: ColorConstants.paleSkyColor,
                  fontWeight: FontWeight.w500,letterSpacing: 0.8,
                  fontSize: 12),
            )),
            const SizedBox(height: 24,),
            SizedBox(
              height: 50,
              child: Center(
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCardViewWidget1(
                        title: items[index]['title'],
                        icon: items[index]['icon1'],
                        index: index);
                  },
                ),
              ),
            )
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

  _buildCardViewWidget(
      {required int index, required String imageUrl1, required String icon1}) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl1,
              fit: BoxFit.contain,
            )),
        if (index == 0 || index == 3 || index == 4 || index == 5)
          Positioned(
              bottom: 18,
              right: 2.5,
              child: Image.asset(
                icon1,
                height: 22,
                width: 22,
                fit: BoxFit.contain,
              ))
      ],
    );
  }

  _buildCardViewWidget1(
      {required String icon, required String title, required index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child:InkWell(onTap:
          index==0? (){
            Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings(name: '/addHobbiesAddPhoto')));
          }:  (){
    Navigator.push(context, RouteGenerator.generateRoute(const RouteSettings()));
    },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: index == 0
                    ? ColorConstants.aquamarineColor
                    : ColorConstants.persimmonColor,
              ),
              child: Image.asset(
                icon,
                color: ColorConstants.whiteColor,
                height: 12,
                width: 12,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: AppStyles.regularText(
                  color: index == 0
                      ? ColorConstants.aquamarineColor
                      : ColorConstants.persimmonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
