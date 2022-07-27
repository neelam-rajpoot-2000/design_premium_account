import 'package:design_premium_account/constants/string_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import 'add_hobbies2_screen.dart';

class AddHobbies extends StatefulWidget {
  const AddHobbies({Key? key}) : super(key: key);

  @override
  State<AddHobbies> createState() => _AddHobbiesState();
}

class _AddHobbiesState extends State<AddHobbies> {
  final List _searchHistory = [];
  bool isSearchEnable = false;
  final TextEditingController _txtController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  final List item = [
    {
      'title': StringConstant.astronomyText,
    },
    {
      'title': StringConstant.birdwatchingText,
    },
    {
      'title': StringConstant.badmintonText,
    },
    {
      'title': StringConstant.campingText,
    },
    {
      'title': StringConstant.chessText,
    },
    {
      'title': StringConstant.danceText,
    },
    {
      'title': StringConstant.drawingText,
    },
    {
      'title': StringConstant.fitnessText,
    },
    {
      'title': StringConstant.fishingText,
    },
    {
      'title': StringConstant.golfText,
    },
    {
      'title': StringConstant.hikingText,
    },
    {
      'title': StringConstant.kayakingText,
    },
    {
      'title': StringConstant.musicText,
    },
    {
      'title': StringConstant.origamiText,
    },
    {
      'title': StringConstant.photographyText,
    },
    {
      'title': StringConstant.rockClimingText,
    },
    {
      'title': StringConstant.surfingText,
    },
    {
      'title': StringConstant.tennisText,
    },
    {
      'title': StringConstant.trainspottingText,
    },
    {
      'title': StringConstant.yogaText,
    },
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                color: ColorConstants.mineShaftColor,
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
              height: 21,
            ),
            Text(
              StringConstant.searchsText,
              style: AppStyles.regularText(
                  color: ColorConstants.bigStoneColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: _txtController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined,
                    color: ColorConstants.dustyGrayColor, size: 30),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
              onTap: () {
                if(_txtController.text.isEmpty){
                  setState(() {
                    isSearchEnable = true;
                  });
                }
              },
              onChanged: (value){
                print("valueCheck ${value.length}");
                if(value.isEmpty){
                  _searchHistory.clear();
                  setState(() {
                  });
                }
              },
              onFieldSubmitted: (value){
                _searchHistory.clear();
                item.forEach((pc) {
                  if (pc['title'].contains(value)) _searchHistory.add(pc);
                });
                setState(() {
                });
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: GridView.builder(
                  itemCount:
                      isSearchEnable ? _searchHistory.length : item.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    List tempList = isSearchEnable ? _searchHistory : item;
                    return _buildCardViewWidget(
                      index: index,
                      title: tempList[index]['title'],
                    );
                  },
                ),
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
    required int index,
    required String title,
  }) {
    return InkWell(
      onTap: index == 2
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddHobbies2()),
              );
            }
          : () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddHobbies()),
              );
            },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
            height: 35,
            width: 152,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ColorConstants.bigStoneColor,
                )),
            child: Text(
              title,
              style: AppStyles.regularText(
                  color: ColorConstants.bigStoneColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

