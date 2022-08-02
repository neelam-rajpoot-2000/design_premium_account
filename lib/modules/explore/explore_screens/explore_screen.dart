import 'package:design_premium_account/constants/colors_constant.dart';
import 'package:design_premium_account/constants/icons_constant.dart';
import 'package:design_premium_account/constants/images_constant.dart';
import 'package:design_premium_account/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/string_constant.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List item = [
    {
      'title': StringConstant.photographyText,
    },
    {
      'title': StringConstant.badmintonText,
    },
    {
      'title': StringConstant.surfingText,
    },
  ];

  final List items = [
    {
      'title': StringConstant.astronomyText,
    },
    {
      'title': StringConstant.tennisText,
    },
  ];
  final imagesList1 = [
    StringConstant.photographyText,
    StringConstant.surfingText,
    StringConstant.fitnessText
  ];
  int activeIndex = 0;
  int index1 = 0;
  final imagesList = [
    ImageConstants.boy1,
    ImageConstants.boy,
    ImageConstants.boy3,
    ImageConstants.girl,
  ];

  final imagesList2 = [
    {StringConstant.astronomyText, StringConstant.astronomyIsText},
    {StringConstant.badmintonText, StringConstant.badmintonIsText},
    {StringConstant.surfingText, StringConstant.surfingIsText}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.buddeeText,
                          style: AppStyles.regularText(
                              color: ColorConstants.bigStoneColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Image.asset(
                          IconConstants.lines,
                          height: 24.42,
                          width: 25,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                        aspectRatio: 1.1,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(
                            () {
                              activeIndex = index;
                            },
                          );
                        },
                      ),
                      items: imagesList
                          .map(
                            (item) => Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringConstant.youGotText,
                          style: AppStyles.boldText(
                              color: ColorConstants.malibu2Color,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              ColorConstants.sunshadeColor,
                              ColorConstants.orangeColor,
                            ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                IconConstants.diamond,
                                height: 15,
                                width: 16,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                StringConstant.premiumText,
                                style: AppStyles.regularText(
                                    color: ColorConstants.whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: item.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildCardViewWidget(
                            index: index,
                            title: item[index]['title'],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      height: 147,
                      width: double.infinity,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(
                              () {
                                index1 = index;
                              },
                            );
                          },
                        ),
                        items: imagesList1
                            .map(
                              (title) => Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                        color: ColorConstants.bubblesColor,
                                        border: Border.all(
                                            color: ColorConstants.anakiwaColor,
                                            width: 1),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          title,
                                          style: AppStyles.boldText(
                                              color:
                                                  ColorConstants.malibu2Color,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          StringConstant.noText,
                                          style: AppStyles.regularText(
                                              color:
                                                  ColorConstants.bigStoneColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  )),
                            )
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Center(child: buildIndicator1()),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      StringConstant.tomOtherText,
                      style: AppStyles.boldText(
                          color: ColorConstants.bigStoneColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildCardViewWidget1(
                            index: index,
                            title: items[index]['title'],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 160,
                child: buildIndicator(),
              ),
              Positioned(
                top: 270,
                left: 32,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.alexText,
                          style: AppStyles.boldText(
                              color: ColorConstants.whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 26),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13, vertical: 7),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  ColorConstants.sunshadeColor,
                                  ColorConstants.orangeColor,
                                ]),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              IconConstants.diamond,
                              height: 15,
                              width: 16,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          IconConstants.direction,
                          height: 13,
                          width: 13,
                          color: ColorConstants.whiteColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          StringConstant.threekmAwayText,
                          style: AppStyles.regularText(
                              color: ColorConstants.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.333333),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 330,
                left: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstants.persimmonColor,
                      ),
                      padding: EdgeInsets.all(18),
                      child: Image.asset(
                        IconConstants.close,
                        height: 14,
                        width: 14,
                        color: ColorConstants.whiteColor,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstants.aquamarineColor,
                      ),
                      padding: EdgeInsets.all(18),
                      child: Image.asset(
                        IconConstants.ryt,
                        height: 10.31,
                        width: 14.44,
                        color: ColorConstants.whiteColor,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCardViewWidget({required String title, required index}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [
          ColorConstants.anakiwaColor,
          ColorConstants.malibu2Color,
        ]),
      ),
      child: Text(
        title,
        style: AppStyles.boldText(
            color: ColorConstants.bigStoneColor,
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }

  _buildCardViewWidget2({required String title, required subtitle}) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: ColorConstants.bubblesColor,
              border: Border.all(color: ColorConstants.anakiwaColor, width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.boldText(
                    color: ColorConstants.bigStoneColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                subtitle,
                style: AppStyles.regularText(
                    color: ColorConstants.bigStoneColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }

  _buildCardViewWidget1({required String title, required index}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorConstants.bigStoneColor, width: 1.5)),
      child: Text(
        title,
        style: AppStyles.boldText(
            color: ColorConstants.bigStoneColor,
            fontWeight: FontWeight.w400,
            fontSize: 14),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesList.length,
        effect: JumpingDotEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: ColorConstants.whiteColor,
            dotColor: ColorConstants.silverChaliceColor),
      );

  Widget buildIndicator1() => AnimatedSmoothIndicator(
        activeIndex: index1,
        count: imagesList1.length,
        effect: JumpingDotEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: ColorConstants.malibu2Color,
            dotColor: ColorConstants.icebergColor),
      );
}
