import 'package:design_premium_account/constants/images_constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../constants/colors_constant.dart';
import '../../../constants/icons_constant.dart';
import '../../../constants/string_constant.dart';
import '../../../constants/style_constant.dart';
import '../../../routes/route_generator.dart';

class AddHobbiesAddPhoto extends StatefulWidget {
  const AddHobbiesAddPhoto({Key? key}) : super(key: key);

  @override
  State<AddHobbiesAddPhoto> createState() => _AddHobbiesAddPhotoState();
}

class _AddHobbiesAddPhotoState extends State<AddHobbiesAddPhoto> {
  final ImagePicker _picker= ImagePicker();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List item = [
    {'imageUrl1': ImageConstants.man1, 'icon1': IconConstants.right},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add},
    {'imageUrl1': ImageConstants.backGd, 'icon1': IconConstants.add}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 45.07, horizontal: 32.06),
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
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      RouteGenerator.generateRoute(const RouteSettings(
                          name: '/addHobbiesAddPhotoAndDelete')));
                },
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
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
      ),
    );
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
        Positioned(
            bottom: 18,
            right: 2.5,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder:((builder)=> bottomSheet()));
              },
              child: Image.asset(
                icon1,
                height: 22,
                width: 22,
                fit: BoxFit.contain,
              ),
            ))
      ],
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          const Text(
            'Choose profile photo',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: const Icon(Icons.camera),
                label: const Text('Camera'),
              ),
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: const Icon(Icons.image),
                label: const Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async{
    final pickerFile =await _picker.pickImage(source: source);
    setState((){
    //  imageFile = pickerFile;
    });
  }}
